# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.20.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.20.4/hjkl-v0.20.4-aarch64-apple-darwin.tar.gz"
      sha256 "fb534e59ebf7c87f2798cc21f6d8c9821db6edd3152d274f88a8dd9fb90b236c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.20.4/hjkl-v0.20.4-x86_64-apple-darwin.tar.gz"
      sha256 "e44ca01f742b1e4726108dbb5eafb47cb431666f96dc920fd0a169d8ad7630b0"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
