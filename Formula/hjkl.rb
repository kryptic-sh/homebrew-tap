# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.33.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.4/hjkl-v0.33.4-aarch64-apple-darwin.tar.gz"
      sha256 "33294b6485a56d44d8293a1abb2d7286596a64dc8f53e210a2e2ad5e03add4fb"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.4/hjkl-v0.33.4-x86_64-apple-darwin.tar.gz"
      sha256 "9ce21b0f25685b258d74990b898ac94974a4dda9b485479262ad8c3413c63a45"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
