# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.9.3"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.3/pikr-v0.9.3-aarch64-apple-darwin.tar.gz"
    sha256 "29d261298b8ad60e6629c2e7741502d0b7257df687d182a3bdfd0b55ff81372d"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.3/pikr-v0.9.3-x86_64-apple-darwin.tar.gz"
    sha256 "5a3644eee709f8bf382a7b699964993a4736b0ee2b8b130d232e7c40bd7821c7"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
