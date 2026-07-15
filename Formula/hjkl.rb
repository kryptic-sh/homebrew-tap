# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.34.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.34.1/hjkl-v0.34.1-aarch64-apple-darwin.tar.gz"
      sha256 "566d58be82e8e79638ac133c9287d666aa14e8b10abedec52d23ffb8f880849f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.34.1/hjkl-v0.34.1-x86_64-apple-darwin.tar.gz"
      sha256 "f063418ad48a912410c4e9cbbdd23fcf090ad7c5f88b2ed6a1c6decc015cee6b"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
