# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.11/hjkl-v0.14.11-aarch64-apple-darwin.tar.gz"
      sha256 "e4b58507a604bc2da81e6f3e8e32db0e36ddb0cc616cd63056885f407f1fbaae"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.11/hjkl-v0.14.11-x86_64-apple-darwin.tar.gz"
      sha256 "4d1c21f5fa60717af10da8a5bf9e8e6b2cc91e2f962c9ad32fb726eab1a8d26c"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
