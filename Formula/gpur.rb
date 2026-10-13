# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.13.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.5/gpur-v0.13.5-aarch64-apple-darwin.tar.gz"
      sha256 "bf0b4e997c5255dd164639e31c05d03b988d514110a5e49b594fc8c1cc539c6c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.5/gpur-v0.13.5-x86_64-apple-darwin.tar.gz"
      sha256 "6215a8ccce8c6ec62a3b8935ad6f23cb61591da87e12519ea5afab0f815da420"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
