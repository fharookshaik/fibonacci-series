# Contributing

Thanks for contributing to the Fibonacci Series project.

## 1. Fork and clone

Fork the repository, then clone your fork:

```bash
git clone https://github.com/<your-github-username>/fibonacci-series.git
cd fibonacci-series
```

## 2. Create a branch

Create a focused branch for your change:

```bash
git checkout -b <short-descriptive-branch-name>
```

Do not work directly on `main`.

## 3. Choose a contribution

Check [Languages.md](Languages.md) and the existing folders under `fibonacci_series/`.

You can contribute by:

- adding a language that is not present;
- fixing an incorrect implementation;
- simplifying or optimizing an existing implementation;
- adding tests or validation;
- improving documentation or repository tooling.

Duplicate implementations are acceptable when they demonstrate a meaningfully different algorithm or improve an existing solution.

## 4. Place code in the correct directory

Implementations should live under:

```text
fibonacci_series/<Language>/
```

For a new language, create a clearly named directory and source file that matches the conventions already used in the repository.

Do not add generated files, editor metadata, operating-system files, binaries, or unrelated assets.

## 5. Fibonacci convention and interface

New canonical implementations should follow:

```text
F(0) = 0
F(1) = 1
F(n) = F(n - 1) + F(n - 2)
```

The machine-testable interface is:

- read one non-negative integer `N` from standard input;
- print exactly the first `N` Fibonacci terms;
- separate terms by spaces;
- print a trailing newline;
- do not print prompts or explanatory text to standard output;
- return a non-zero exit status for malformed or negative input.

For input `10`, expected output is:

```text
0 1 1 2 3 5 8 13 21 34
```

If a language has numeric limits, reject unsupported values rather than silently overflowing.

## 6. Update repository metadata

If you add or rename a language directory, update [Languages.md](Languages.md).

The repository includes:

```bash
node ./utils/updateLanguageMd.js
```

If you add a canonical CI-tested implementation, also add its compile/run definition to [tests/implementations.json](tests/implementations.json).

## 7. Test your change

Run the repository checks:

```bash
python utils/validate_repository.py
python utils/test_implementations.py
```

The second command requires the toolchain for every CI-verified language. If you only have one runtime installed, use:

```bash
python utils/test_implementations.py --language Python
```

Replace `Python` with the configured language name.

GitHub Actions runs the complete test suite before merge.

## 8. Commit and push

```bash
git add <files-you-changed>
git commit -m "Describe the change"
git push origin <your-branch-name>
```

## 9. Open a pull request

Open a pull request against `main` and include:

- what you changed;
- why you changed it;
- how you tested it;
- any language/runtime requirements.

Keep pull requests focused. Unrelated cleanup should be submitted separately.

## Review expectations

A contribution may be requested to change if it:

- produces an incorrect Fibonacci sequence;
- violates the standard input/output contract without a documented reason;
- duplicates an existing implementation without adding value;
- adds unrelated or generated files;
- cannot be reproduced;
- introduces unnecessary dependencies;
- mixes unrelated changes in one pull request.

Contributor attribution is handled through Git history and GitHub. Manual edits to `Contributors.md` are not required for every contribution.
