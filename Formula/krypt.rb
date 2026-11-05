# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.6.1"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.6.1/krypt-v0.6.1-aarch64-apple-darwin.tar.gz"
    sha256 "fbc11712a3d1592dfe7b1ea5e45d65c5df9825325bf93c22d9f6aad7e227f38f"
  end
  on_intel do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.6.1/krypt-v0.6.1-x86_64-apple-darwin.tar.gz"
    sha256 "bd40b13594ca148e8b1dba05aad49f9744880084449f8268ab9472c0a9624a3d"
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
