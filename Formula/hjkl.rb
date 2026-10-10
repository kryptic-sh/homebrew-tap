# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.42.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.42.2/hjkl-v0.42.2-aarch64-apple-darwin.tar.gz"
      sha256 "1136b55acb7aa0f08c2c98c521ee796a2a149b3c022ef173fa2a987e50edceac"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.42.2/hjkl-v0.42.2-x86_64-apple-darwin.tar.gz"
      sha256 "db9a0a962b9279683d5bfb549b1eb0a5dd287bce396ebf818b50ca3c99a0abb7"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
