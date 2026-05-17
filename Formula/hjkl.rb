# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.21.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.2/hjkl-v0.21.2-aarch64-apple-darwin.tar.gz"
      sha256 "23fb8961dbf7bbdd34d0eb99bfb2bf52324d4369a528466d7571a6fbb86259bc"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.2/hjkl-v0.21.2-x86_64-apple-darwin.tar.gz"
      sha256 "a47c8ae602b4d98b4f0387715868571c1edabcaf03b6a11dfb02f183a94a94ef"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
