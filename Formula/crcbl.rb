# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.2.1/crcbl-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "899c1690a810d54e72d9aa99d00cf7f927a16aeca8fae6b881acbd52e7f41c1b"
    end
    on_intel do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.2.1/crcbl-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "11630c79be5848485bf922e845acc86a496dce6af7154867ecb079a16716cb55"
    end
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
