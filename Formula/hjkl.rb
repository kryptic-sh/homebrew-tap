# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.41.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.5/hjkl-v0.41.5-aarch64-apple-darwin.tar.gz"
      sha256 "d77c56c40887e870058a79a07edf078a0bc9e27281daa1287bb23f37ad8c934d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.5/hjkl-v0.41.5-x86_64-apple-darwin.tar.gz"
      sha256 "e5101a6cf227bf7641279a9b308d804479f980c1c17e07cae15d914fbcea60a4"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
