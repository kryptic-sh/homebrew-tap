# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.15.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.15.2/hjkl-v0.15.2-aarch64-apple-darwin.tar.gz"
      sha256 "ec8c23898d2db331c8a747964216d3b82085384271a7ab8e028da9c916789e71"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.15.2/hjkl-v0.15.2-x86_64-apple-darwin.tar.gz"
      sha256 "0328d64c52ffada3e1c77be7941cd3fa57f3b627f891e03173a9bb6b7dd9cdd1"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
