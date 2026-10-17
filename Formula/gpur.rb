# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.13.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.6/gpur-v0.13.6-aarch64-apple-darwin.tar.gz"
      sha256 "81ff1b1ec7d98b8662a17bb8474cf1929cfee5b709f020a711cf7c9e39963423"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.6/gpur-v0.13.6-x86_64-apple-darwin.tar.gz"
      sha256 "f4b4fb9b6f7735d339115849654baf34c754600fe566361389fead10c47e79da"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
