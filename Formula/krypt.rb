# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.5.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.5.0/krypt-v0.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "eee6ce99427d2b9dfd3defedf6d42f081de74b2fec4612f9b5ba892aee688d2e"
  end
  on_intel do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.5.0/krypt-v0.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "14a7570cbbe53ea95300f2aa8be7ced4279fb3e8dcfcf67fabc67c02f44208c0"
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
