# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.7.0/gpur-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "ceabc07e4532da0e6e702593563454fa8c99fc031a378c529ba9018abd25729a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.7.0/gpur-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "0dde7d008e864a5691ed8e1991440c88ea4c087e54a643a6f7183ef1db70724b"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
