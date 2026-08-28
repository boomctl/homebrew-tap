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
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/boomctl/git-ark/releases/download/v0.3.0/git-ark-aarch64-apple-darwin"
      sha256 "173306770592fdacfd62cf17db911ea0f85df221424750a69aae835336ee3bbe"
    end
    on_intel do
      url "https://github.com/boomctl/git-ark/releases/download/v0.3.0/git-ark-x86_64-apple-darwin"
      sha256 "9a43ccbdb093cc0c3cae3c47de1f386f6887fa92bd0320bfc7fdd71427485b7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/boomctl/git-ark/releases/download/v0.3.0/git-ark-aarch64-unknown-linux-musl"
      sha256 "32387e6eea80601a2852e70fc9516564c1329917b021137ee5097fe903b898c4"
    end
    on_intel do
      url "https://github.com/boomctl/git-ark/releases/download/v0.3.0/git-ark-x86_64-unknown-linux-musl"
      sha256 "d5eba1b6f16d1ffb1a965d2fe55bfe65350913faf102264fa06913e9f82f9ba2"
    end
  end

  def install
    bin.install Dir["git-ark-*"].first => "git-ark"
  end

  test do
    assert_match "git-ark #{version}", shell_output("#{bin}/git-ark --version")
  end
end
