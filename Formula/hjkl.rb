# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.11.0/hjkl-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "5b07458fc0dfda337a0822d12afee3f7e1fc020dac39f13ab24803f4f0d97d6c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.11.0/hjkl-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "5612dbee808e099223f5634fe1be41f270fea83f1cb0c52218c6d8af8f930c38"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
