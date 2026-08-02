# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.12.0/gpur-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "03a07f28f1815830bfb6e304e87b5524a75db7ca2a4037312a4cb4040b84d6e7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.12.0/gpur-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "7ec4193b54164f6d4ae74fd248d4a00e84756daac99090e3f34988e116140aa8"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
