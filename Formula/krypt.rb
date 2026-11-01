# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.6.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.6.0/krypt-v0.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "fa8540ba22164a021d195e7e1fac22930ecc07a6ed733741993b6bb8a4668f9a"
  end
  on_intel do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.6.0/krypt-v0.6.0-x86_64-apple-darwin.tar.gz"
    sha256 "18c275457129d51e3619c5b752ba6ae2497d10fc336760673eec3649698ddb20"
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
