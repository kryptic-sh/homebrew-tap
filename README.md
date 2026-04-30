# homebrew-tap

Homebrew tap for [kryptic-sh](https://github.com/kryptic-sh) command-line tools.

## Install

```sh
brew tap kryptic-sh/tap
brew install kryptic-sh/tap/hjkl
```

Or in one line:

```sh
brew install kryptic-sh/tap/hjkl
```

## Available formulae

| Formula                   | Description                                              |
| ------------------------- | -------------------------------------------------------- |
| [`hjkl`](Formula/hjkl.rb) | Vim-modal terminal editor — TUI built on the hjkl engine |

## Updating

Formula bumps are manual. After a new upstream release lands, dispatch the
corresponding bump workflow with the tag to pin:

```sh
gh workflow run bump-hjkl.yml --repo kryptic-sh/homebrew-tap -f tag=v0.3.2
```

The workflow validates the tag, downloads the release tarballs, computes
sha256s, rewrites `Formula/<name>.rb`, and commits to `main`. Direct edits also
land via PR.

## License

[MIT](LICENSE)
