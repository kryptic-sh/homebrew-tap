# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.17.2"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.17.2/crcbl-v0.17.2-aarch64-apple-darwin.tar.gz"
    sha256 "fdec97a699453ed9fb896f35a1c2eda17c270b851b31bedaf783bed36fa13f14"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.17.2/crcbl-v0.17.2-x86_64-apple-darwin.tar.gz"
    sha256 "6c3b01cd540f39b1d7054d028822495418aec28df4392af2c75e9d00045fe940"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
