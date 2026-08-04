# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.0/gpur-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "0cf32128b940668444b98f891f792ddf9ce6b86c36806b5f8004508b71c95806"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.0/gpur-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "ebbf0725c58a2d9e66b52d417b0dc8f13ed7f4bc2b83648c8ff2a1c8e7307762"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
