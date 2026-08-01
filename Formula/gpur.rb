# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.11.0/gpur-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "cafd70a29e4bd7180c744f3ab89ba265088d115e1b930e8723cd40593627267d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.11.0/gpur-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "a1ac4eceb0b6156bdc7e29f6b3717e202cc68508c8bfc08bbc492a92d395f4eb"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
