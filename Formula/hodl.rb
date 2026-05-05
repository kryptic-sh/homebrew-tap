# Auto-generated. Source: https://github.com/kryptic-sh/hodl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hodl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hodl < Formula
  desc "Light crypto wallet for the terminal — multi-chain TUI built on ratatui"
  homepage "https://hodl.kryptic.sh/"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.5.0/hodl-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "7b60d0b6f0d7bd9e08a05ba4054f208bb808471a4e5d9a31422a06d5ca681fba"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.5.0/hodl-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "bf1392fd010017112c8c3156739589ca7667dfe67a8032e06eb9b13e0832a0dd"
    end
  end

  def install
    bin.install "hodl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hodl --version")
  end
end
