# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.43.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.1/hjkl-v0.43.1-aarch64-apple-darwin.tar.gz"
      sha256 "4404fb152d478a3941d0ea6001e893779bead380dad3948a091e1f1c4ac44940"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.1/hjkl-v0.43.1-x86_64-apple-darwin.tar.gz"
      sha256 "164f1ea6de03d43ebe3013a51a8d9ac6d459bf9a903e98e57108505b1f535688"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
