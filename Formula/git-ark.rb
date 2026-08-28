# git-ark Homebrew formula.
#
#   brew tap boomctl/tap
#   brew install git-ark
#
# Installs prebuilt release binaries — no compile. Checksums are the SHA-256 of
# each release asset (SHA256SUMS on the GitHub release).
class GitArk < Formula
  desc "Write-only backup vault that fronts your own git host"
  homepage "https://github.com/boomctl/git-ark"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/boomctl/git-ark/releases/download/v0.2.0/git-ark-aarch64-apple-darwin"
      sha256 "8cf470e3ee95569c122dda59e95924b5523cdc21eba40991e73f764441aa2569"
    end
    on_intel do
      url "https://github.com/boomctl/git-ark/releases/download/v0.2.0/git-ark-x86_64-apple-darwin"
      sha256 "b905a7a3bcf87e11833de489b1c297c4530e2ee98bfe30a12b8782e197dfc078"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/boomctl/git-ark/releases/download/v0.2.0/git-ark-aarch64-unknown-linux-musl"
      sha256 "a4bd7fd3a3b5c83f9ab6e69fe5bb63e0eeaad237077de6801fe20015014ec0c0"
    end
    on_intel do
      url "https://github.com/boomctl/git-ark/releases/download/v0.2.0/git-ark-x86_64-unknown-linux-musl"
      sha256 "b7613a8a05ce299c0f802a6bdf19a6464a2793aa19a10600483bc80e964a7eb0"
    end
  end

  def install
    bin.install Dir["git-ark-*"].first => "git-ark"
  end

  test do
    assert_match "git-ark #{version}", shell_output("#{bin}/git-ark --version")
  end
end
