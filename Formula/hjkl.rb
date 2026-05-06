# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.12.2/hjkl-v0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "e2fd1aa237a2ffa5fc9c05956015c87788f0856e0f60c4474ae315e72d28bd0b"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.12.2/hjkl-v0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "371ce11c8d3fb7a37e2139da646ecf29c655c7b8986aa9cf94bc20746cc65832"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
