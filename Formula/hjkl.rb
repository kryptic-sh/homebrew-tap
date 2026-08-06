# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.41.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.2/hjkl-v0.41.2-aarch64-apple-darwin.tar.gz"
      sha256 "bff6dc6d8006f0b77fa0a24619d22914a7fb94f280201a2cd064aa452c7af0e2"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.2/hjkl-v0.41.2-x86_64-apple-darwin.tar.gz"
      sha256 "b9700e5ecf5e5573aaeed2081706b856d1ec8ea09d97e63280b8cae3a7aef7c6"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
