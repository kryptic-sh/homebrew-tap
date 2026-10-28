# Auto-generated. Source: https://github.com/kryptic-sh/lyr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/lyr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Lyr < Formula
  desc "Desktop status bar for Wayland, Windows and macOS"
  homepage "https://github.com/kryptic-sh/lyr"
  version "0.4.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/lyr/releases/download/v0.4.0/lyr-v0.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "78b0883b9596c5926e496ee6dde046846fc015beb419a2b85b824ddba540cf85"
  end
  on_intel do
    url "https://github.com/kryptic-sh/lyr/releases/download/v0.4.0/lyr-v0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "f5d543755ac49916403620187115f6cf7ecdd7d1406c8a07d25f708bd1753172"
  end

  def install
    bin.install "lyr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lyr --version")
  end
end
