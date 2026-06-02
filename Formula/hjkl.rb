# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.29.0/hjkl-v0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1280b880679fc97ff4b441909568bbf28642521536f0300d87a51c09250e82c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.29.0/hjkl-v0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "a314f1878d2ebce60e9f03cde0b9460909253bc5765ccc5163eaa22e38f8e50e"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
