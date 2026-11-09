# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.18.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.18.0/crcbl-v0.18.0-aarch64-apple-darwin.tar.gz"
    sha256 "85e8ddaf3c69340d0899fbc846f047a6f0a548017099de08758899b44abf692c"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.18.0/crcbl-v0.18.0-x86_64-apple-darwin.tar.gz"
    sha256 "a0d538c63012275b44d9dde759730ff7395ed063f1e22c4a37e8bf9bdc30330a"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
