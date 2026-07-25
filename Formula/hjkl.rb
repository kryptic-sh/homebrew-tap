# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.36.0/hjkl-v0.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "8b35a6c9b9d010942dafaf935ba22f8f1ad649de27c0de8ea0f35c96497260ed"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.36.0/hjkl-v0.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "e18f8c3f09faee61a7ee3f33f8fc503b1768aab26d88e5537b67985ae688e21c"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
