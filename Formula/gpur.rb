# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.13.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.2/gpur-v0.13.2-aarch64-apple-darwin.tar.gz"
      sha256 "cddbe2c405695f61318b3311e9935924402ed447a0eb4172f389e31692605e7f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.2/gpur-v0.13.2-x86_64-apple-darwin.tar.gz"
      sha256 "ff19816776b2c9529132d558a0f7ca07188dfe795597885aff58398059fd7870"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
