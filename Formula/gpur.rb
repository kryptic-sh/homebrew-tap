# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.10.0/gpur-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "6a2656f68470bdf7a9ab49ae821f9f3815b32a34a3ba12040ff9442713ef644a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.10.0/gpur-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "356206cd4edb24dc53d67388d8598365037ee92c8a3dc85228615369e49084d9"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
