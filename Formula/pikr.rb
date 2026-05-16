# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.2.0/pikr-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d19b4440ba1dddb4ff25e67b29fd443d904518ad4775358741b25ef5860616d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.2.0/pikr-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "4ee543eac5304b3ea21b94e4d88f918db331fd6b731324380a40930308528cd2"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
