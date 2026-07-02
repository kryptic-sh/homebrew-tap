# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.6.0/gpur-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "a50feeefd69ecb85eb9e618ec927697b145392b329d0b25598d64350fd9b4d28"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.6.0/gpur-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "eee2f9fe72a1ca461fa1a822068574645f22ae38a2ee76df2671e344da2026d3"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
