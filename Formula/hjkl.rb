# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.26.0/hjkl-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "d5907297ea2519b2c5dc1c9a616eb08195ee14b6f263b65f5106656eba851835"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.26.0/hjkl-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "423f8a9f5167fa8cc21fb764137189e2e08f9432b98106f5b95ea5284b0cdb11"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
