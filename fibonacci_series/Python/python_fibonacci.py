import sys


def fibonacci_terms(n: int) -> list[int]:
    terms = []
    a, b = 0, 1
    for _ in range(n):
        terms.append(a)
        a, b = b, a + b
    return terms


def main() -> int:
    raw = sys.stdin.readline().strip()
    try:
        n = int(raw)
    except ValueError:
        return 2

    if n < 0:
        return 2

    print(" ".join(str(value) for value in fibonacci_terms(n)))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
