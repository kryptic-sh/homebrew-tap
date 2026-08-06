# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.10/pikr-v0.8.10-aarch64-apple-darwin.tar.gz"
      sha256 "69648b354c2b68bc9c035fac72af1b69b9fd2a1b04f5a630cf2f999bfd5bb534"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.10/pikr-v0.8.10-x86_64-apple-darwin.tar.gz"
      sha256 "5e1c17c792a3a6d90fbd2de28ac3e067d2181ce70a5fd943d42ca00bd2e3668a"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
