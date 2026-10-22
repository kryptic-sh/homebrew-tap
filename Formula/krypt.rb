# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.4.3"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.4.3/krypt-v0.4.3-aarch64-apple-darwin.tar.gz"
    sha256 "7cd00e463aabae339b571fb4c725f2c084632b42c613365cf900ccfef8d5e66a"
  end
  on_intel do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.4.3/krypt-v0.4.3-x86_64-apple-darwin.tar.gz"
    sha256 "0aa832e48992f9be9f72e0ad7c543a3356d14868e44c2bf3b30b264806303eb1"
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
