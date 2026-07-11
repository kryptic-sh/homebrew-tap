# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.33.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.5/hjkl-v0.33.5-aarch64-apple-darwin.tar.gz"
      sha256 "de72951832b045e797f1abb65a586e3a065a407eb182024e7c28efeac319b51f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.5/hjkl-v0.33.5-x86_64-apple-darwin.tar.gz"
      sha256 "87ec1475d679245ee8fec7716ea26d857e577c5c48827cab0f9f41253fcb19ce"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
