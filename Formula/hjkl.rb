# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.5/hjkl-v0.14.5-aarch64-apple-darwin.tar.gz"
      sha256 "459a538bf89df3f18b554a78da05251ed68c59ae0f07f9424c37a81c3478c1f0"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.5/hjkl-v0.14.5-x86_64-apple-darwin.tar.gz"
      sha256 "547d44d3ee33f4787d11a8dfe38e2cc9cc316b6ab4acfc74037ff2383ccd2a5d"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
