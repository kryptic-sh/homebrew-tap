# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.0.1/krypt-v0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "454166eceb7d58f6b1155185d72e467ffe6565bff23d45c00b2ecbd9d61bcb9b"
    end
    on_intel do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.0.1/krypt-v0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "c8c72b205dcae1908dae609d274d74cbe64357f0ebfd242d6ce34ec9812add17"
    end
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
