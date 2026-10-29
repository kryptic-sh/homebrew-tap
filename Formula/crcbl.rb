# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.13.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.13.0/crcbl-v0.13.0-aarch64-apple-darwin.tar.gz"
    sha256 "fcf412fc5c5b350303e4c5767e2dcb7f922ee3f101f35de945ef639cd01e4bf8"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.13.0/crcbl-v0.13.0-x86_64-apple-darwin.tar.gz"
    sha256 "5c2369ba68a261cc154aa4587f29ce3fb958fec086c777a521a5005a69c57635"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
