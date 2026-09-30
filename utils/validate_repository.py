#!/usr/bin/env python3
"""Validate repository structure and generated metadata."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
IMPLEMENTATIONS = ROOT / "fibonacci_series"
LANGUAGES_FILE = ROOT / "Languages.md"

ALLOWED_TOP_LEVEL_DIRS = {".git", ".github", "fibonacci_series", "utils"}
FORBIDDEN_NAMES = {".DS_Store", "Thumbs.db"}
FORBIDDEN_DIR_NAMES = {".idea", ".vscode", "__pycache__", "node_modules"}
FORBIDDEN_SUFFIXES = {".pyc", ".pyo", ".swp", ".swo"}
LANGUAGE_SECTION = "## Code already developed in this programming language."


def fail(errors: list[str]) -> None:
    print("Repository validation failed:")
    for error in errors:
        print(f"  - {error}")
    raise SystemExit(1)


def language_directories() -> list[str]:
    if not IMPLEMENTATIONS.is_dir():
        return []
    return sorted(
        path.name
        for path in IMPLEMENTATIONS.iterdir()
        if path.is_dir() and not path.name.startswith(".")
    )


def listed_languages() -> list[str]:
    if not LANGUAGES_FILE.is_file():
        return []

    content = LANGUAGES_FILE.read_text(encoding="utf-8")
    if LANGUAGE_SECTION not in content:
        return []

    section = content.split(LANGUAGE_SECTION, 1)[1]
    return [
        line[2:].strip()
        for line in section.splitlines()
        if line.startswith("- ") and line[2:].strip()
    ]


def validate_top_level(errors: list[str]) -> None:
    for path in ROOT.iterdir():
        if path.is_dir() and path.name not in ALLOWED_TOP_LEVEL_DIRS:
            errors.append(
                f"unexpected top-level directory '{path.name}'; "
                "language implementations belong under fibonacci_series/"
            )


def validate_forbidden_files(errors: list[str]) -> None:
    for path in ROOT.rglob("*"):
        if ".git" in path.parts:
            continue

        if path.is_dir() and path.name in FORBIDDEN_DIR_NAMES:
            errors.append(f"forbidden generated/editor directory: {path.relative_to(ROOT)}")
            continue

        if not path.is_file():
            continue

        if path.name in FORBIDDEN_NAMES or path.suffix.lower() in FORBIDDEN_SUFFIXES:
            errors.append(f"forbidden generated/editor file: {path.relative_to(ROOT)}")


def validate_languages(errors: list[str]) -> None:
    actual = language_directories()
    if not actual:
        errors.append("no language directories found under fibonacci_series/")
        return

    folded: dict[str, list[str]] = {}
    for language in actual:
        folded.setdefault(language.casefold(), []).append(language)

    duplicates = [names for names in folded.values() if len(names) > 1]
    for names in duplicates:
        errors.append(f"case-insensitive duplicate language directories: {', '.join(names)}")

    listed = listed_languages()
    if not listed:
        errors.append(
            f"{LANGUAGES_FILE.name} is missing the expected language section or contains no languages"
        )
    elif listed != actual:
        missing = sorted(set(actual) - set(listed))
        stale = sorted(set(listed) - set(actual))

        if missing:
            errors.append(
                "Languages.md is missing: " + ", ".join(missing)
            )
        if stale:
            errors.append(
                "Languages.md lists directories that do not exist: " + ", ".join(stale)
            )
        if not missing and not stale:
            errors.append("Languages.md language entries are not sorted")

    for language in actual:
        directory = IMPLEMENTATIONS / language
        if not any(path.is_file() for path in directory.rglob("*")):
            errors.append(f"language directory is empty: fibonacci_series/{language}/")


def main() -> int:
    errors: list[str] = []

    if not IMPLEMENTATIONS.is_dir():
        errors.append("missing fibonacci_series/ directory")
    if not LANGUAGES_FILE.is_file():
        errors.append("missing Languages.md")

    validate_top_level(errors)
    validate_forbidden_files(errors)
    validate_languages(errors)

    if errors:
        fail(errors)

    print(
        f"Repository validation passed: "
        f"{len(language_directories())} language directories checked."
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
