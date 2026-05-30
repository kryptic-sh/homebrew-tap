# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.28.1/hjkl-v0.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "cad08a3852876c28ae5582aecc48d322908d37c5994cc4304730ba7d708524e8"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.28.1/hjkl-v0.28.1-x86_64-apple-darwin.tar.gz"
      sha256 "ed629d14682b13d3605599f6f1f47e87e7f556aadfecff888a5a019ca7c412c3"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
