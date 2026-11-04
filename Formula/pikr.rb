# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.9.8"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.8/pikr-v0.9.8-aarch64-apple-darwin.tar.gz"
    sha256 "c86902dbb0795fc649518d490fe255b262b2c6ceaba929fb5e785118cbc1b1f5"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.8/pikr-v0.9.8-x86_64-apple-darwin.tar.gz"
    sha256 "b3f06230495ffd303c729adba9ba16e3953782df37549b3cd916048971760102"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
