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

## Repository structure

Language implementations live under:

```text
fibonacci_series/<Language>/
```

See [Languages.md](Languages.md) for the current language list.

## Contributing

Contributions are welcome for:

- new language implementations;
- fixes to existing implementations;
- simpler or more efficient algorithms;
- tests and validation;
- documentation and repository maintenance.

Read [CONTRIBUTING.md](CONTRIBUTING.md) before opening a pull request.

## Project direction

The repository is being modernized around a few goals:

- consistent structure across languages;
- reproducible output and documented assumptions;
- automated validation through GitHub Actions;
- multiple algorithm variants where useful;
- clear contributor and review guidelines.

## License

See [LICENSE](LICENSE).
