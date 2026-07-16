# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.34.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.34.2/hjkl-v0.34.2-aarch64-apple-darwin.tar.gz"
      sha256 "844ef97270e386b5a335badd619ba1bf3c5a7471adb307327bbfcd267c0de75f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.34.2/hjkl-v0.34.2-x86_64-apple-darwin.tar.gz"
      sha256 "f6304bdaee1a15c95848becd6b028a8034cd33062c0f00ecca5321b5025ee075"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
