# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.3.0/krypt-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "bbb704280e359c9cefc61ef42aaf8601a112c24127370779062c8d5380df63ef"
    end
    on_intel do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.3.0/krypt-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "efb4afbe1391486ae0158aa080a68d3115a4ded77b407a2f775402a49323c5d5"
    end
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
