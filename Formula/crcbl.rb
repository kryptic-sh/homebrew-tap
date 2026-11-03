# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.17.1"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.17.1/crcbl-v0.17.1-aarch64-apple-darwin.tar.gz"
    sha256 "8ebbd9cd56998757da96ca63bda42e92d17c7def0f1a75e322b18aa51f904a0b"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.17.1/crcbl-v0.17.1-x86_64-apple-darwin.tar.gz"
    sha256 "d9de5949d970ca2957f244214385a8556c217f3c5bcf8e1e596138c13f7b007d"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
