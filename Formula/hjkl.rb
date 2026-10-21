# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.43.3"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.3/hjkl-v0.43.3-aarch64-apple-darwin.tar.gz"
    sha256 "2252fec9514eefad571847754e67e8f7f46ac229cc254276f148f49e5739cde0"
  end
  on_intel do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.3/hjkl-v0.43.3-x86_64-apple-darwin.tar.gz"
    sha256 "561412f7e9696290187268a906d73a9d01f9b2e3255fd6feaeb1528e8e302333"
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
