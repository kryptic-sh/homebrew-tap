# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.4.2/krypt-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "8ef4a5d1add321243c71262b821776de6c97be3ce3e17ce8435517ec92de4dd7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.4.2/krypt-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "7fddd8ef3bb9f8409dfd262b3af5d4bb9a69753a2e5e60843c2587cfdfe676dd"
    end
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
