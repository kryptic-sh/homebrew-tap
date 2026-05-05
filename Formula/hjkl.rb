# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.11.3/hjkl-v0.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "d544890d72362f6d2c7b1cb61cf2a63ca61410115e6be09d9ee4dea0548bc960"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.11.3/hjkl-v0.11.3-x86_64-apple-darwin.tar.gz"
      sha256 "87261c34d872010a5002a4f7f8cba2847e418db365f9267a26f59620e2718b38"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
