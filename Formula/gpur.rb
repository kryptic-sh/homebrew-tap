# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.10.1/gpur-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "b685b0d88ef8e8b3e47d2353de8ab3bb8d5ae904e18c7f7a0a16be9653cd296e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.10.1/gpur-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "ff0a2531c5b225b60bca82096cccc31e71db55b589c7f2174d206ccba0ac10ab"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
