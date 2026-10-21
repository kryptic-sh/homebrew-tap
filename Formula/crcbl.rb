# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.8.1"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.8.1/crcbl-v0.8.1-aarch64-apple-darwin.tar.gz"
    sha256 "9d3edf785ac2953261609a30e0cc3c736f45d78c14d8a2d5765ecb5f3d2e7673"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.8.1/crcbl-v0.8.1-x86_64-apple-darwin.tar.gz"
    sha256 "cec9772572cd3430df12f552b37b1b380515f4d6bb588e250b0541827fdea435"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
