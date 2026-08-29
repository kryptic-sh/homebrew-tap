# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.41.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.4/hjkl-v0.41.4-aarch64-apple-darwin.tar.gz"
      sha256 "9175c0e144d3d410c7582b5ea2b9272eac0d806ae7b641c70e27e309fd6c2024"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.4/hjkl-v0.41.4-x86_64-apple-darwin.tar.gz"
      sha256 "e28c37292246300238816e8c88ee0f66d17e084c0bc94d74887bbcff7a01dce6"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
