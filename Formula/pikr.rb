# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.9.4"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.4/pikr-v0.9.4-aarch64-apple-darwin.tar.gz"
    sha256 "b6aa53f9be1002a8437b8b350b2eebc5edfd6be0631e10757fb3536a15798770"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.4/pikr-v0.9.4-x86_64-apple-darwin.tar.gz"
    sha256 "ead36fe3ad0a8c839483ab652541064071e46381370383609572437a3b0d03e9"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
