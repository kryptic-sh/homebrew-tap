# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.24.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.24.4/hjkl-v0.24.4-aarch64-apple-darwin.tar.gz"
      sha256 "19f2a92d8a3ac0c43989f8e6a25ea55c911a219396592a5dc39eca975018598f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.24.4/hjkl-v0.24.4-x86_64-apple-darwin.tar.gz"
      sha256 "f04a1ab71c9d61318a3da61004c79004db8bc1b49a3dfe736bbb334707a8845f"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
