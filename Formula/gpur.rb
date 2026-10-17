# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.13.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.7/gpur-v0.13.7-aarch64-apple-darwin.tar.gz"
      sha256 "02bd1b5cc1fd5756558c3d625d8c72573c9672037ca1ce360249d59be1d6ed7f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.7/gpur-v0.13.7-x86_64-apple-darwin.tar.gz"
      sha256 "908301e1bef032985e08c33f9e640986bb57d0c2bb4457a9084880bd0d522654"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
