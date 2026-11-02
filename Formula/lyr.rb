# Auto-generated. Source: https://github.com/kryptic-sh/lyr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/lyr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Lyr < Formula
  desc "Desktop status bar for Wayland, Windows and macOS"
  homepage "https://github.com/kryptic-sh/lyr"
  version "0.5.1"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/lyr/releases/download/v0.5.1/lyr-v0.5.1-aarch64-apple-darwin.tar.gz"
    sha256 "25bd238f4e16bacc3dc3de311244973ee4207ad407656ab40e39f0dab486b0db"
  end
  on_intel do
    url "https://github.com/kryptic-sh/lyr/releases/download/v0.5.1/lyr-v0.5.1-x86_64-apple-darwin.tar.gz"
    sha256 "378d83402b446ff464bbc47716433468a99c0e4d600d2a871b0c83b64f75fa06"
  end

  def install
    bin.install "lyr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lyr --version")
  end
end
