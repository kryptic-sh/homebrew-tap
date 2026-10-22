# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.9.2"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.2/pikr-v0.9.2-aarch64-apple-darwin.tar.gz"
    sha256 "e4d17f0183b3106ed468d6da86d1f690c86e6ea0b1a3efc0ecb74c5653d16735"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.2/pikr-v0.9.2-x86_64-apple-darwin.tar.gz"
    sha256 "8ad46749c0f03e65be029cc13d590342b2cc8a2033e819761b3a250b895060f0"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
