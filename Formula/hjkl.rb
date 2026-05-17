# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.20.1/hjkl-v0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "418a18d841e1ac9d96565b81b87e4a654c2a29f6cb35ff6bafe81c02b1a1eba3"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.20.1/hjkl-v0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "1fc2ecb8ac494fdeb3ac0169ea38ae70c6520d4355512b5d339406a1394734d2"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
