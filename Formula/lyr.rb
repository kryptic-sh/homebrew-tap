# Auto-generated. Source: https://github.com/kryptic-sh/lyr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/lyr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Lyr < Formula
  desc "Desktop status bar for Wayland, Windows and macOS"
  homepage "https://github.com/kryptic-sh/lyr"
  version "0.1.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/lyr/releases/download/v0.1.0/lyr-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "7fb579e26978bc337f48e4b4830a1f774cd465c55c109fd784d54d544674ece8"
  end
  on_intel do
    url "https://github.com/kryptic-sh/lyr/releases/download/v0.1.0/lyr-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "2a43b7c1731b0a5f75f5aef0985bf96ba92e20ff038339fbea6657552dd4cce7"
  end

  def install
    bin.install "lyr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lyr --version")
  end
end
