# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.45.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.45.0/hjkl-v0.45.0-aarch64-apple-darwin.tar.gz"
    sha256 "d4bf8c2485d32f191e9c70b419e58032ea724e529b10fd69e44da34b6ea749bd"
  end
  on_intel do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.45.0/hjkl-v0.45.0-x86_64-apple-darwin.tar.gz"
    sha256 "e148721cb6acf3962f62a8005343688c041a86d67228451456622f9434595fd4"
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
