# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.6/hjkl-v0.14.6-aarch64-apple-darwin.tar.gz"
      sha256 "062b5655e05978fcadab62095f7de02f9544978beab03ac4bbbcf049661d0e19"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.6/hjkl-v0.14.6-x86_64-apple-darwin.tar.gz"
      sha256 "729087584692cdcf71449623d5ff1b545cbfb5d3f0d523be0427a13da6807989"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
