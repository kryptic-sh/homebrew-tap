# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.11.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.11.0/crcbl-v0.11.0-aarch64-apple-darwin.tar.gz"
    sha256 "7880af5fe913b8ff5a9476c1e6887ca656bc5225cc1fa6ba511cbede21444d34"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.11.0/crcbl-v0.11.0-x86_64-apple-darwin.tar.gz"
    sha256 "e4630b9383486ab02b621c295598a208ea13897991d1699f47a284af4ed9d47f"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
