# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.37.0/hjkl-v0.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "c6ad284f614ef5d40754759dec7f85919c128f8cd8aa582b9d3f234bc5c88533"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.37.0/hjkl-v0.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "77f39c2e2c3728e6e541526cce7b457a7701b8d8e700ae011b78367b8c5d1a76"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
