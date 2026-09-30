# Fibonacci Series

A collection of Fibonacci sequence implementations across programming languages.

The project is being actively cleaned up and modernized so that contributions are consistent, testable, and easier to review.

## Definition

This repository uses the conventional zero-indexed Fibonacci sequence:

```text
F(0) = 0
F(1) = 1
F(n) = F(n - 1) + F(n - 2)
```

The sequence begins:

```text
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
```

## Implementation contract

Canonical implementations that are covered by CI follow one machine-testable interface:

- read one non-negative integer `N` from standard input;
- print the first `N` Fibonacci terms;
- separate terms with spaces;
- start with `0 1 1 2 ...`;
- exit with a non-zero status for malformed or negative input.

For example, input `10` must produce:

```text
0 1 1 2 3 5 8 13 21 34
```

See [tests/STATUS.md](tests/STATUS.md) for the current CI verification status of each language.

## Repository structure

Language implementations live under:

```text
fibonacci_series/<Language>/
```

See [Languages.md](Languages.md) for the current language list.

## Automated verification

GitHub Actions validates the repository structure and compiles/runs the configured canonical implementations against shared test vectors in [tests/cases.json](tests/cases.json).

The implementation registry is maintained in [tests/implementations.json](tests/implementations.json).

Run the same checks locally with:

```bash
python utils/validate_repository.py
python utils/test_implementations.py
```

## Contributing

Contributions are welcome for:

- new language implementations;
- fixes to existing implementations;
- simpler or more efficient algorithms;
- tests and validation;
- documentation and repository maintenance.

Read [CONTRIBUTING.md](CONTRIBUTING.md) before opening a pull request.

## License

See [LICENSE](LICENSE).
