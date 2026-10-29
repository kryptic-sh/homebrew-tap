# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.44.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.44.0/hjkl-v0.44.0-aarch64-apple-darwin.tar.gz"
    sha256 "9c3aa67dcbe8d2161a2b0e6e2f3bd4e2f850db5a0b762b51966a0ce1a75d0549"
  end
  on_intel do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.44.0/hjkl-v0.44.0-x86_64-apple-darwin.tar.gz"
    sha256 "f67d8a79c51716fec1f4dcd4b3a51eb0c809ef32c42109c4d930595d8563e061"
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
