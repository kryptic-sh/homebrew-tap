# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.21.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.3/hjkl-v0.21.3-aarch64-apple-darwin.tar.gz"
      sha256 "c6567fe909fd51114bd8ce9c5cea81f03fe2fa4415d98dac864ee30507084338"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.3/hjkl-v0.21.3-x86_64-apple-darwin.tar.gz"
      sha256 "c3960b4c251004c4e6a603b89bb84f432fd448c6818cfdef4349496e8b29b3fc"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
