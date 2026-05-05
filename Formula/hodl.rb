# Auto-generated. Source: https://github.com/kryptic-sh/hodl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hodl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hodl < Formula
  desc "Light crypto wallet for the terminal — multi-chain TUI built on ratatui"
  homepage "https://hodl.kryptic.sh/"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.4.0/hodl-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "21a595fa1d6110e24cb6ecb70c32e4d39e7b1836aa2495522a7ec82b5be84e93"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.4.0/hodl-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "65c67a1c1261fe090d2e98873f13512474c1a04cac9c8586ceb1e8ceb52f2365"
    end
  end

  def install
    bin.install "hodl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hodl --version")
  end
end
