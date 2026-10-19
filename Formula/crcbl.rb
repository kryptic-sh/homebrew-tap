# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.6.0/crcbl-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "3d193d18fc8d16335bab1d1df94de51cc2fb44637f29062bd69a6526ef67239f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.6.0/crcbl-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "c1615c2ec6ef9ade66c12f8da63b3b9901a0e43de950d7458ab636254f4e6b9b"
    end
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
