# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.1.0/gpur-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a65434fde08a69de44e121ebcf6e1af709a52fa605424814e4078c191d56f4dc"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.1.0/gpur-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "51e28b47aa8850d1ac85cb8ed9621953ee2374600d920287130902694b2d4a57"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
