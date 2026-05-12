# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.8/hjkl-v0.14.8-aarch64-apple-darwin.tar.gz"
      sha256 "365a5880a33043560756d9852077566d51b5e1f797cfa67c87e6967b3d153757"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.8/hjkl-v0.14.8-x86_64-apple-darwin.tar.gz"
      sha256 "6d5db03280d4000c5d682d4d4602fd069c7853a4974629e8ab8b441870797577"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
