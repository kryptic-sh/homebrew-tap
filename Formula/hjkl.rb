# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.0/hjkl-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "083fe33f34f555c61cf50b0fe4e62abed734d3cd7c3d1853f76c7005a16b11c9"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.0/hjkl-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "95d6e63c40ce241b1eebeeb1350dd27b961b44ee5ce1ac187c0adeffaf78b9f8"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
