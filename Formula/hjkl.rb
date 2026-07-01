# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.33.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.3/hjkl-v0.33.3-aarch64-apple-darwin.tar.gz"
      sha256 "8f224679f6cb6147a8de0d1a285291a2b28623117cf19f5375039aa6fabddb2a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.3/hjkl-v0.33.3-x86_64-apple-darwin.tar.gz"
      sha256 "aca5de06921c4470c520201c600d9572c9ac1c85086b89dba5299e871570c694"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
