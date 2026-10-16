# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.2.0/crcbl-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "dea1343b8cb329aa236adaffc0493b4ae0a06926153c9d87b2c533a5744fa59a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.2.0/crcbl-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "9b26e5accaf3317dfe74f3a29a242270f2d1ad6ff753e40d33ad3987ad3beae1"
    end
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
