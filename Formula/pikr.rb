# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.1/pikr-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "ac76c0bef4ef0c98ae0c26aa669773b6944871356345989a8faf855152e6101f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.1/pikr-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "fd7ebbabb7166bdbba66809354cbb9a60ab4377c2c8c2cd2065e3aee24196ad7"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
