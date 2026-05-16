# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.1.0/krypt-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "051223b94e711b3a358311ec8ff4f8c1946560eb826c4888ed090259c63ee8f2"
    end
    on_intel do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.1.0/krypt-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "fe85d97e4fe0d27193522873d61bd9da88a7fcc23426a0314f5698d717ca31a1"
    end
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
