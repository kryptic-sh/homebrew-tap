# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.8.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.8.0/crcbl-v0.8.0-aarch64-apple-darwin.tar.gz"
    sha256 "bc41057ce166c424e76ab83b16f9700af689a0c907808ae39a9d62d128711ecc"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.8.0/crcbl-v0.8.0-x86_64-apple-darwin.tar.gz"
    sha256 "f80c2e7d19184e4d0f935b0eb6d35e14276fd5fb0db3ced7881a07785ca4a7da"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
