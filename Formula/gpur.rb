# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.2.0/gpur-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "1a795311528745a6c170625c7c65d7bf36f1f9cead56255c5df503844d3873f0"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.2.0/gpur-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "372d82d11eb8cceb8bae612ff23a971a3bab714c5b5061106839464d152a1309"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
