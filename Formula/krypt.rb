# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.2.0/krypt-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ab71fa64ca42757742451ca973aa335b6acb6fcc2465313f1c88525495d318cf"
    end
    on_intel do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.2.0/krypt-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "303fc2caff4f49df22f1b34f16f60791a2f33f163846b6f2b959328983243d8e"
    end
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
