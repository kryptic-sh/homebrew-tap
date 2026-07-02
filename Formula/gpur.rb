# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.4.0/gpur-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "e35c3c835df8ddedbdd503b2a3c42a743325b9b153b0149700257acbfe1bce3c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.4.0/gpur-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "646348329ff0188a36e41bad494157d76c718bea6a4d70fc52ba6e1793f9a233"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
