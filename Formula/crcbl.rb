# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.9.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.9.0/crcbl-v0.9.0-aarch64-apple-darwin.tar.gz"
    sha256 "06c126cc16208b9e7ddf4d629b3ada07056229b2733ab83385214e3c15908dd1"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.9.0/crcbl-v0.9.0-x86_64-apple-darwin.tar.gz"
    sha256 "967716b94ef0ecd446ce574a9f267c518093b040cfe911623cc1549c1916f448"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
