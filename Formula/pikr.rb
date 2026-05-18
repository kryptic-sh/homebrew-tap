# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.0/pikr-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc15aea5d7f34b8f72599d600fc0716cd9a2dd6c9722fec99145896bd0b76968"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.0/pikr-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "f5579908c00788dd0ca04464c5082a0f011dd85fbd4be2b3344e8e4be6afbb52"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
