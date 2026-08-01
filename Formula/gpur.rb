# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.11.1/gpur-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "39f7b53077d7ae476bd0f153fe1c592202fa8c51757386305a46bffdf2a07372"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.11.1/gpur-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "cdf75d33de9680c1c670c17c69bb38482764e1d5a08763ac797db44127a0d3b6"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
