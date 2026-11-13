# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.46.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.46.0/hjkl-v0.46.0-aarch64-apple-darwin.tar.gz"
    sha256 "434e427a649c383f01dafd3b3a3596781e389aa9561ae25f1bf6633b72871be4"
  end
  on_intel do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.46.0/hjkl-v0.46.0-x86_64-apple-darwin.tar.gz"
    sha256 "6dce88476845e5f6cc07cbc7af1f1d5835d8574ffed645d434ab07e933b4e38c"
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
