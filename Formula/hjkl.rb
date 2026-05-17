# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.21.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.5/hjkl-v0.21.5-aarch64-apple-darwin.tar.gz"
      sha256 "d31abf7ba314b507c8ff7633b490a7c179ca204c915c64e3e47d468f460a854a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.5/hjkl-v0.21.5-x86_64-apple-darwin.tar.gz"
      sha256 "ddc25cd41f5f3ca72ce6bd138438bd3a80aa2e91258390ba14f087720c601ccc"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
