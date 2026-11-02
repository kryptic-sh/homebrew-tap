# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.9.7"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.7/pikr-v0.9.7-aarch64-apple-darwin.tar.gz"
    sha256 "dc3b0b6f1835da956ae5c4b0d95f2d16e0b04d401b2ec907e1b1ce7cf5b5490c"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.7/pikr-v0.9.7-x86_64-apple-darwin.tar.gz"
    sha256 "91a30761020f7bae09b672bb846b9b4fc80699fdac69e094819b18e3399b2c18"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
