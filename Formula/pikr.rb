# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.3.2/pikr-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "ec9284fc2d4f0b7d61a864c88e2bad911aa2666a0fc56804a59db5d7a1cccd2a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.3.2/pikr-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "73aa30578c38c82b52e020aca716e9247de47b06585afe6f2250ad37ddcac3c8"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
