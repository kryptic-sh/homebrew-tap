# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.5.0/gpur-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "40188ad4cbf75c1f757e0a038c0a3877f52cc5ff21c188d30c543477b366ca26"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.5.0/gpur-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "9e928372706c8133e737b94823a324c94bb062aebc27892a5292cf59aa8efb5c"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
