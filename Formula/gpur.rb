# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.9.0/gpur-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "5f7160fa0fdc560b605fff1425efccea44e09e3a9675d3c7e65f8f027c0db6d2"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.9.0/gpur-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "4059e6fb1ff2f352f99b1fc3abf7f592f9e29d06391846096ca3c4429eaa221f"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
