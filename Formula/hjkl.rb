# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.33.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.2/hjkl-v0.33.2-aarch64-apple-darwin.tar.gz"
      sha256 "b84e75b5f4627c2518a0869212f87771525c4aa85a5fe3cf928473f2da246455"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.2/hjkl-v0.33.2-x86_64-apple-darwin.tar.gz"
      sha256 "056158dc2fef15cb34840f5ce96c067a7eed5b56a040ea831c52cec430dca9f8"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
