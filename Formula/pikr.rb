# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.12/pikr-v0.8.12-aarch64-apple-darwin.tar.gz"
      sha256 "92bc899fc9d16ee1e9125b6f2c76902627089f2fad173985282ce74afd91be1e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.12/pikr-v0.8.12-x86_64-apple-darwin.tar.gz"
      sha256 "3e5e07a55ca3ceaeda2cd1205665c1cfd5693b4c521e6bb82b0532c03aec6a0d"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
