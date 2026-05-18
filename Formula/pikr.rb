# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.2/pikr-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "e7a6bce8d35cada5f67c0ef4eef8d8a9e2ca273a54deb7b6ff8af766d7f056d5"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.2/pikr-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "2d71df7d16a6aeadf81988e88a778ab55814f5f7b4f5cd17c9e7874bf6aa9fbb"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
