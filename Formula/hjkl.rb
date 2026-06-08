# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.31.0/hjkl-v0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "6f3b6ea9f1d3a02aec4a1cc35c76a16fa8ea525350fd31f16ae8e3fa721c757a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.31.0/hjkl-v0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "e52edb1c380602e09a66de522631986dc32a5c16349e1de9bcfa23e4f42aae34"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
