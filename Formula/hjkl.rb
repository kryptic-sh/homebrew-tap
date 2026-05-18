# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.24.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.24.2/hjkl-v0.24.2-aarch64-apple-darwin.tar.gz"
      sha256 "0b5976c15b655ab202a25d3b7311f40cc611aeffbad33e6b47e18031825de90f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.24.2/hjkl-v0.24.2-x86_64-apple-darwin.tar.gz"
      sha256 "94778db109dc20524acf71ee9f012d583ef791b0f78d812d5e01252ccbb980ea"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
