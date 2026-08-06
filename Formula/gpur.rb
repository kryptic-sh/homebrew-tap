# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.1/gpur-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "9cd99ef36d9fbf7d88ed2763cc8975ee624e9f68b5dc0bf33453fa6b86b5f951"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.1/gpur-v0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "a85fd456fe1b2456b8a9746a0d0c98fcb0d0ecfc920c9ed627b966ea2072be8b"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
