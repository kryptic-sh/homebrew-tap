# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.18.0/hjkl-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "56fe1bcb638cd17a21f5836429ba2dea9a0f0442c3cd60dcf30cda88c80cfe2a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.18.0/hjkl-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "e8b5552797521f36418cc6a9b5fefc7506bf8da0ba1a7ad81d743b650ae1f0c6"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
