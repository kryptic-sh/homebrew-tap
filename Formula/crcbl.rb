# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.19.1"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.19.1/crcbl-v0.19.1-aarch64-apple-darwin.tar.gz"
    sha256 "2d1801d827e3342b79931d5df1f911f3f4640a066945d0bfff57899807322cb4"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.19.1/crcbl-v0.19.1-x86_64-apple-darwin.tar.gz"
    sha256 "01e49b3b048b7a6ed3d49c3f502e14c95276d3b3b457a7b0aa49a8a092e441f0"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
