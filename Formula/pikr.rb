# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.4/pikr-v0.8.4-aarch64-apple-darwin.tar.gz"
      sha256 "edb06376994a60d918f2b80942a0528f53abf8668ad1c43f47a1bb6bb38e7166"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.4/pikr-v0.8.4-x86_64-apple-darwin.tar.gz"
      sha256 "9c346dd92efc5fe94bf7620b25a47ad15d82bd609fc7ed2deb2c6ae4cf844e0f"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
