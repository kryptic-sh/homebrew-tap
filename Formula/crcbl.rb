# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.3.0/crcbl-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0bae5f683d806d8229b2cec8ff622fd210911a1aa21aaaa581a4c9cc3ac7dab4"
    end
    on_intel do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.3.0/crcbl-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "41e0e62bd2f7c6208e7b3ad813c9e3d5f56e3ec5820630bde7aa37d3904d0b56"
    end
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
