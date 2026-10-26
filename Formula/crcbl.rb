# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.12.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.12.0/crcbl-v0.12.0-aarch64-apple-darwin.tar.gz"
    sha256 "3401bdcb33d5f1745954aaafd1274a39d7880e70da38051b10c2d703c8b47c22"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.12.0/crcbl-v0.12.0-x86_64-apple-darwin.tar.gz"
    sha256 "c379cf695be98eac2bce70c6dd0cb830a813de41c4d859529f3616a8e79a0d39"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
