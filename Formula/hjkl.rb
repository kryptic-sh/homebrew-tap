# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.28.0/hjkl-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "527103f2344b38cb4c57b9a357cce6b7513f1ee4ee19de74e22889e88cf0aa84"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.28.0/hjkl-v0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "76bcd2b14d7ba26ee7c490d98f56d3636e064d333e2c8c02391cbe3870a023f9"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
