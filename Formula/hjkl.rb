# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.11.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.11.4/hjkl-v0.11.4-aarch64-apple-darwin.tar.gz"
      sha256 "dee675be9e6efc747eb58a76ed66392dcb60b2ca1e2cff01919a8a18301c020b"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.11.4/hjkl-v0.11.4-x86_64-apple-darwin.tar.gz"
      sha256 "29138cffa4fae9ebf6b6bf5053cf2fd3a5c35d03865078fa5bed19cd327f9672"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
