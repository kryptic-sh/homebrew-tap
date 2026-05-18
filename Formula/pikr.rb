# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.1/pikr-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "47fd827de751c947947928954af62577774fd1101181259be9f41e5dc7ec3f33"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.1/pikr-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "7b901d24e6666dda85d68c46ca64e7f2737bb6bbfce7aaa42bd23786c3cb8240"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
