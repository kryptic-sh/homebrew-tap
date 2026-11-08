# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.45.1"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.45.1/hjkl-v0.45.1-aarch64-apple-darwin.tar.gz"
    sha256 "587b494ebce664aefcd1da683b715a58d07e6e1c4c8b164f04e33d2627d1fd74"
  end
  on_intel do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.45.1/hjkl-v0.45.1-x86_64-apple-darwin.tar.gz"
    sha256 "cd5fd65d6cadbf03ab8a9f0233f93b3bf58f29410fe5441954083193dd7ea88b"
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
