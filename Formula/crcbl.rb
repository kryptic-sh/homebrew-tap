# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.12.1"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.12.1/crcbl-v0.12.1-aarch64-apple-darwin.tar.gz"
    sha256 "c0b7061e62f3701a956fa2f445d73a833028dd8f0ef0f8a9d8defa778346b0df"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.12.1/crcbl-v0.12.1-x86_64-apple-darwin.tar.gz"
    sha256 "0d9ae6141a46cb3df6bf26c8c058b727b3ad493adfdd619c1e88989edf437a8e"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
