# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.4.0/crcbl-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "3cc1d7a6182e12e065583f46e04dc7292defab850563dac26334843b9356b9b2"
    end
    on_intel do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.4.0/crcbl-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "37acf70a55a3869db6fb682c36bbcb260efaf4f1bd5de7048742aa58c1e8e9f7"
    end
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
