# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.5/pikr-v0.8.5-aarch64-apple-darwin.tar.gz"
      sha256 "b92f59abba9fe1c5f0968686c80d41ab2e1aead7afaa6e14a574412b6d4e3768"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.5/pikr-v0.8.5-x86_64-apple-darwin.tar.gz"
      sha256 "4f154289f0489a35b5c7f822e5abb4afdac354805d0c54a0d07c21035e7b3a0a"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
