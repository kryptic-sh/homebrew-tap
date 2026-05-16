# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.19.2/hjkl-v0.19.2-aarch64-apple-darwin.tar.gz"
      sha256 "ff9a8e16f44fc34516e02759c4d1e7746fb749da9800f9e84396d37e766fb532"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.19.2/hjkl-v0.19.2-x86_64-apple-darwin.tar.gz"
      sha256 "87829d93fc02bb5b1c5ad81df58f2ef8466a0d5fac0ab31bb53eb91b054e3349"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
