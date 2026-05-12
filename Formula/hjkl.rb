# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.2/hjkl-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "60458c27b311b497a5601dc10683ea696b4422d8ec7b9aa05df68421b6b2bd84"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.2/hjkl-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "bce39d749f54f145454a4ffc941d67a6656c48d3fb4dc7cdee5b917ac3bbfc79"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
