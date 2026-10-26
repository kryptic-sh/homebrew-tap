# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.4.4"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.4.4/krypt-v0.4.4-aarch64-apple-darwin.tar.gz"
    sha256 "a47029bb77b52e74cc4ced9705b9c6ec41050e03304b9b36caaaedf95ffec4dd"
  end
  on_intel do
    url "https://github.com/kryptic-sh/krypt/releases/download/v0.4.4/krypt-v0.4.4-x86_64-apple-darwin.tar.gz"
    sha256 "ee91c2fb30c54d0b92ea1313925581f3fbe4b327acf0aab84d797fff696ceaba"
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
