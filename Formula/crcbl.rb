# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.14.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.14.0/crcbl-v0.14.0-aarch64-apple-darwin.tar.gz"
    sha256 "28ea26fe5028813dae1056f6230f926b5eee9f99582be828266b67cee125ef3f"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.14.0/crcbl-v0.14.0-x86_64-apple-darwin.tar.gz"
    sha256 "52aa3ea7c4c0fdeac68b6ca77eb6262a5b3d3052fe89138b249d61031beba192"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
