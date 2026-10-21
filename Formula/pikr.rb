# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.9.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.0/pikr-v0.9.0-aarch64-apple-darwin.tar.gz"
    sha256 "0561484c5da4f236869e39461e458f02371127f0ee3f4e341f29505b70e009ca"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.0/pikr-v0.9.0-x86_64-apple-darwin.tar.gz"
    sha256 "3cef539fae171a49655023ee47b1cb9f9512ed8b8c311c17621ddd4f4bce3fd7"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
