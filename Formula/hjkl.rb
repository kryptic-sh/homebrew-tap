# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.43.4"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.4/hjkl-v0.43.4-aarch64-apple-darwin.tar.gz"
    sha256 "0623938cc2482c374d7aab20eab3b14975fe3bcd7ccb6e784dcb38fe8bc82887"
  end
  on_intel do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.4/hjkl-v0.43.4-x86_64-apple-darwin.tar.gz"
    sha256 "b54432d1c6232d2256b4a6951f460060ec76f7c51a2d17c63b90a431556e0ca5"
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
