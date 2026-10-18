# Auto-generated. Source: https://github.com/kryptic-sh/crcbl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/crcbl.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Crcbl < Formula
  desc "Crucible engine's headless control CLI"
  homepage "https://crcbl.kryptic.sh"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.5.0/crcbl-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe24a28fd3170dc67b4e10825ef149965cca3a7e1ffb169978e1b6741de8afe7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/crcbl/releases/download/v0.5.0/crcbl-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "2e11222ca06e8779c7d81c9edffff4395ababc4194e2380e9c41b688f488fb7a"
    end
  end

  def install
    bin.install "crcbl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crcbl --version")
  end
end
