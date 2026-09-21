# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.42.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.42.1/hjkl-v0.42.1-aarch64-apple-darwin.tar.gz"
      sha256 "453dc966bbe61b7e3886493a3ee409159914be5b99d5eeccbe70d4c76f314c28"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.42.1/hjkl-v0.42.1-x86_64-apple-darwin.tar.gz"
      sha256 "07df35a0c4fee914e6132c62e8874b2cbf555a33c759d4016c92f79ab663ae12"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
