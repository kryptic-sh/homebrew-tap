# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.20.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.20.0/crcbl-v0.20.0-aarch64-apple-darwin.tar.gz"
    sha256 "39961a380abb487788e8ce0b21e58966fda197372f46eeae8fc37fb08b9290ff"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.20.0/crcbl-v0.20.0-x86_64-apple-darwin.tar.gz"
    sha256 "0e7be41f0c51a7213ac96e4f2139e102c010d4cbf4d03301e8fce59b9e749eea"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
