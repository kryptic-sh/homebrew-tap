# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.0/hjkl-v0.43.0-aarch64-apple-darwin.tar.gz"
      sha256 "adc94216bc35a4f30ddaf5f3337c2b3acc0233fe5bc0eecc3e48abde5100731a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.0/hjkl-v0.43.0-x86_64-apple-darwin.tar.gz"
      sha256 "fcb51f013359a1d159d6be860a5e8ee6299a2f6769d9874c33a71792f41dd8bd"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
