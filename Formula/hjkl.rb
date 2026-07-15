# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.33.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.6/hjkl-v0.33.6-aarch64-apple-darwin.tar.gz"
      sha256 "c9573996762b07169a29beaa177c2c8a4d0b4d1877c3ac7939d611736e5dc9fa"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.6/hjkl-v0.33.6-x86_64-apple-darwin.tar.gz"
      sha256 "4513ef9b7aa7b3afc4156c758d82a49f5e9821b2e715960dcb06abbac644a038"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
