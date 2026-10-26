# Auto-generated. Source: https://github.com/kryptic-sh/lyr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/lyr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Lyr < Formula
  desc "Desktop status bar for Wayland, Windows and macOS"
  homepage "https://github.com/kryptic-sh/lyr"
  version "0.3.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/lyr/releases/download/v0.3.0/lyr-v0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "cde675e79ef5f1b0bb147aff80709de4efab9162a4caaf179603a3f8d08cf668"
  end
  on_intel do
    url "https://github.com/kryptic-sh/lyr/releases/download/v0.3.0/lyr-v0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "e38d0fb8f31bf389d584c932ed0bed738edf072ce2a116dd3d7c77070f74e0b0"
  end

  def install
    bin.install "lyr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lyr --version")
  end
end
