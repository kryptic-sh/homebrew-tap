# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.21.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.6/hjkl-v0.21.6-aarch64-apple-darwin.tar.gz"
      sha256 "2da88e4c3c8e90230d8d5132210c29a07000611d0035e4f02966bd8d96d6e253"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.6/hjkl-v0.21.6-x86_64-apple-darwin.tar.gz"
      sha256 "8983a430f9a3082d8910ee2ba457c246166c24c0a792d0d63aff38f32eed43ac"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
