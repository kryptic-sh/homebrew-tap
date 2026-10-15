# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.1.0/crcbl-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a20d9fd0736310ae1c2cfbd2e9d6b0e6b82f5b3527083eb06ae1b1c1cffae3da"
    end
    on_intel do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.1.0/crcbl-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "fe4b1c8da64d0422394492ec13720842593aa7fdb8878e38d69a10e0ef464f56"
    end
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
