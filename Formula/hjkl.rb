# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.17.1/hjkl-v0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "5bdba32f24edfca079a039a967b2faa69060b4752409aac7d8ffa34f32aeb22a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.17.1/hjkl-v0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "56c55b78d4cec9fb0365cdad95f1f2f8698c442bc77e9f9935080ee89d2c08b1"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
