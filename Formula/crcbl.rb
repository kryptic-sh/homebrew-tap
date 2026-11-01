# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.15.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.15.0/crcbl-v0.15.0-aarch64-apple-darwin.tar.gz"
    sha256 "f713898f2ea6bc123a9a2fde2a1957e3ff799fa54aef981ea60ae21e31181e17"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.15.0/crcbl-v0.15.0-x86_64-apple-darwin.tar.gz"
    sha256 "414a6d16342ae8dec4078c00694e5b7897d49b3ae929adb190d61ed4f6669abc"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
