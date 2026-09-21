# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.4.1/krypt-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "8c3774388448665779a518b839d54c1bc18fae5f7d65a4cba686dba88c96bfda"
    end
    on_intel do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.4.1/krypt-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "dc6db9988117da24e29faa766a395a0612fcd8a52ba7a257eee728ae4bb0491a"
    end
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
