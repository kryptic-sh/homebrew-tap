# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.9.5"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.5/pikr-v0.9.5-aarch64-apple-darwin.tar.gz"
    sha256 "242637722b3f971ec8337ddc2bb8af46b867a9705ded943c5b7add32721b944b"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.5/pikr-v0.9.5-x86_64-apple-darwin.tar.gz"
    sha256 "8255890be4925aef7200f3c92823988cbc1c8dcdd994d2e4480cfe8e8b289357"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
