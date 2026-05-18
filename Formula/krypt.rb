# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.2.2/krypt-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "4e0f4d32d735d64119252718655fe610f78c990c175d35bf9cbb300ded3de785"
    end
    on_intel do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.2.2/krypt-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "3668d2d6aa4243e83a740b9f8986418be6d0b40de58c9734f7252e542adfa579"
    end
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
