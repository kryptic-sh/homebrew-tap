# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.3/hjkl-v0.14.3-aarch64-apple-darwin.tar.gz"
      sha256 "352d29510e39f49233120ed0e518f3b5fd07339befd6edae34966b80f459d88e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.3/hjkl-v0.14.3-x86_64-apple-darwin.tar.gz"
      sha256 "faf87dad017114b83a3fc8eaa1e9ab7187cd7c4689c20edc42c83a3429111545"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
