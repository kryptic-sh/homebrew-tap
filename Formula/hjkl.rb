# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.9/hjkl-v0.14.9-aarch64-apple-darwin.tar.gz"
      sha256 "1bec120a9ae005c82a9f421805cc6ca15f984f8d0d9e98dcdb0fb2602f2c043f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.9/hjkl-v0.14.9-x86_64-apple-darwin.tar.gz"
      sha256 "d2cd9568d0b8350f3f83d76d60cb1b3d3b440b0f876381b68f843f10ea41bd30"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
