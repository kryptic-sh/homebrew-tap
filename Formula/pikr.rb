# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.2/pikr-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "eef48d029676a343caa3b52f87a9290aed8e20ae323034e22d5bbeb01919a8db"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.2/pikr-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "e3c21deab480eab383cf2cd1a3c94f6efd829f4f780e6330e0ccf2016fe74153"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
