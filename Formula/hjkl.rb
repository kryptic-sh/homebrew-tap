# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.41.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.6/hjkl-v0.41.6-aarch64-apple-darwin.tar.gz"
      sha256 "3f0e287c17c173b8514e1da151396eea62894c448cd479ff9bd9c21f3f7fbb9a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.6/hjkl-v0.41.6-x86_64-apple-darwin.tar.gz"
      sha256 "736b5aa82f319eaf89ec0e6f4d05d69b55b9cfd466b1d97aab8eae3cad88ae3a"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
