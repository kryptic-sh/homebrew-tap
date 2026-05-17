# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.21.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.31/hjkl-v0.21.31-aarch64-apple-darwin.tar.gz"
      sha256 "ba156d0be2ed0b6f9f76a076b7a78c5b1f96a785690b913172821bedfa44a17d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.31/hjkl-v0.21.31-x86_64-apple-darwin.tar.gz"
      sha256 "65e1a6d0cfcdfd6914ad3a8b80bb72c68c5122b72a47795fa2b9538be02744e7"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
