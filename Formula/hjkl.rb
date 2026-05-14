# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.16.0/hjkl-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "927ad5a98576716356ccc843c57020f9a11534097da64d8d791a88909de07cf7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.16.0/hjkl-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "60fd3dd2ea4f98f411bcafa7867b1f17949015528de3fde0f859e00a47d02ad4"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
