# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.3.0/gpur-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "4f9bb70e832ca49be45dd7169b28f00623886fe4bf8e9ae0042fa51deec5625e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.3.0/gpur-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "e07855eca829e7700bf1809cc316c5bb538b71c3ad7a89f78b58497eb7af5898"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
