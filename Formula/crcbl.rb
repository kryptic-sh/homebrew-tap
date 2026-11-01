# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.16.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.16.0/crcbl-v0.16.0-aarch64-apple-darwin.tar.gz"
    sha256 "880aa27cfe5a39736eac236349f6e1bcff440eda7630ae9f8f37e510e246c77e"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.16.0/crcbl-v0.16.0-x86_64-apple-darwin.tar.gz"
    sha256 "5d78326d4cfcedc3b165ccf63d6e7e91cf85f2add4d177c7f4632f11a865eb20"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
