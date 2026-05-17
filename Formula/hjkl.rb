# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.21.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.7/hjkl-v0.21.7-aarch64-apple-darwin.tar.gz"
      sha256 "536981fa9d8596006dcde427773aa9b5bd2a698c04b2d2355c08b73709c3e01f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.7/hjkl-v0.21.7-x86_64-apple-darwin.tar.gz"
      sha256 "41ca71f455772d64ee9f9dec96d898b6cf398f1155cc9872541d1f33191b15af"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
