# boomctl/homebrew-tap

Homebrew tap for [`git-ark`](https://github.com/boomctl/git-ark) — a write-only
backup vault that fronts your own git host.

```sh
brew tap boomctl/tap
brew install git-ark
```

Installs the prebuilt release binary for your platform (macOS and Linux, Intel
and Apple Silicon / ARM). To upgrade:

```sh
brew update && brew upgrade git-ark
```

The formula lives in [`Formula/git-ark.rb`](Formula/git-ark.rb); each release's
checksums come from the `SHA256SUMS` asset on the corresponding
[git-ark release](https://github.com/boomctl/git-ark/releases).
