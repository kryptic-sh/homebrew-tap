# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.41.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.3/hjkl-v0.41.3-aarch64-apple-darwin.tar.gz"
      sha256 "3a9625e2ba81efb7a2a1d09475191ae9780497453f41b2a36218474be908f3dd"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.3/hjkl-v0.41.3-x86_64-apple-darwin.tar.gz"
      sha256 "95feccc6b3de9a44c9828111fbcfb55412adb3536c98225dfc43219dd3243289"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
