# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.10.2/gpur-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "a804eb262143f69fd4ba0094505e008a89ea5fc72cb0dcd646a5c8a5d31b0de1"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.10.2/gpur-v0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "5bc9eec3c860fb4ddd2aec050d680f0c38dc1fca54ea91144115dded0f61183e"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
