# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.17.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.17.0/crcbl-v0.17.0-aarch64-apple-darwin.tar.gz"
    sha256 "c0c4666b56a88f996ee6bd96de65884c0aca822b1f9fe6597a69c9df09d5a2df"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.17.0/crcbl-v0.17.0-x86_64-apple-darwin.tar.gz"
    sha256 "242323723b1f9aa3cb3e2acb7a21608175dfd3cdc8898c3c590baa24f1409f2b"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
