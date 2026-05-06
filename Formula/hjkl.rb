# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.12.1/hjkl-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "b7d8b33d83083cef3f7b9ab5027f7d33461e4cad1d8d5683b135471b541c4b89"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.12.1/hjkl-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "a06d2eab961d221b2aa19957361a01ec1e7593b3ac7ac0ff2557d700dd47dc8b"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
