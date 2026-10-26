# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.10.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.10.0/crcbl-v0.10.0-aarch64-apple-darwin.tar.gz"
    sha256 "6c1cc9d69db41d71dd19cfa062d7c5466cde7321ec6d54c7a2cf08984349139e"
  end
  on_intel do
    url "https://github.com/kryptic-sh/crcbl/releases/download/v0.10.0/crcbl-v0.10.0-x86_64-apple-darwin.tar.gz"
    sha256 "d2edb961eba57b8ac3d12359888e3f19c10e7af99977ab7514cc2a22fb1e3b11"
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
