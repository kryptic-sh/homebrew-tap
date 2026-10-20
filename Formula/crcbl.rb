# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.7.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.7.0/crcbl-v0.7.0-aarch64-apple-darwin.tar.gz"
    sha256 "3c8836125b8334316b704ef58e026e233eff3e1a7b671eed3e463a803108d45a"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.7.0/crcbl-v0.7.0-x86_64-apple-darwin.tar.gz"
    sha256 "089ef4875ccd49429c9301f0dc1ccf50b0aa2bc1ddfe91e8b7f8ff12ffc53b68"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
