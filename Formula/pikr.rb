# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.11/pikr-v0.8.11-aarch64-apple-darwin.tar.gz"
      sha256 "baf23b719a1977049fa5879870a03474e20e3a923292feec1a18bcd88f11379d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.11/pikr-v0.8.11-x86_64-apple-darwin.tar.gz"
      sha256 "9346724e0689ba8fa2e8e53e451ee3f9bff1f4a26eca6b9bcc853fb6fd33d4b0"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
