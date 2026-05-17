# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.21.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.8/hjkl-v0.21.8-aarch64-apple-darwin.tar.gz"
      sha256 "0ac466434709cb77f9497213773fe77219de2590dc3f4f6fda4a1c6da620a4fb"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.8/hjkl-v0.21.8-x86_64-apple-darwin.tar.gz"
      sha256 "c7a2e03bdc8cb2f6c6014ddf95187da9c06f402945c0984184c66fa7231d3772"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
