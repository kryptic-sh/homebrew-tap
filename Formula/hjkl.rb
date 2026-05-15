# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.18.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.18.2/hjkl-v0.18.2-aarch64-apple-darwin.tar.gz"
      sha256 "709c018fa17d1f59410b82ecb9bb5983b8af28185bca7d75206cd090b97974d7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.18.2/hjkl-v0.18.2-x86_64-apple-darwin.tar.gz"
      sha256 "c3cff736140b0cb9715e7363fa8c2c3a1aeb372cb5734f370f4378e51a9d1b78"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
