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

## 5. Fibonacci convention

New and updated implementations should follow:

```text
F(0) = 0
F(1) = 1
F(n) = F(n - 1) + F(n - 2)
```

Expected first 10 terms:

```text
0 1 1 2 3 5 8 13 21 34
```

Avoid hard-coded output. If the language has numeric limits, document them in the source or pull request.

## 6. Update the language index

If you add or rename a language directory, update [Languages.md](Languages.md).

The repository currently includes a helper script:

```bash
node ./utils/updateLanguageMd.js
```

If you use it, review the generated changes before committing them.

## 7. Test your change

Run the implementation locally and verify that it produces the expected sequence.

Where automated tests or CI checks exist, they must pass before the pull request can be merged.

Screenshots are not required unless they are useful for explaining a platform-specific problem.

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
- duplicates an existing implementation without adding value;
- adds unrelated or generated files;
- cannot be reproduced;
- introduces unnecessary dependencies;
- mixes unrelated changes in one pull request.

Contributor attribution is handled through Git history and GitHub. Manual edits to `Contributors.md` are not required for every contribution.
