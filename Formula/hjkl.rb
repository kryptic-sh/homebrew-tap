# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.21.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.9/hjkl-v0.21.9-aarch64-apple-darwin.tar.gz"
      sha256 "f28b543f21767e79eed7c83e20bc4982850a3deceb059effdca245130d6f4899"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.9/hjkl-v0.21.9-x86_64-apple-darwin.tar.gz"
      sha256 "916d4cc2467810ea120b7f3561f8f5e5d2998dfbf8271634580362767ab4a832"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
