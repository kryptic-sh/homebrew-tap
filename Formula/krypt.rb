# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.0.2/krypt-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "de97a8d0fa9dadaf31733caa228d6fa9735e8d0e8711f67b497f8ee23b911747"
    end
    on_intel do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.0.2/krypt-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "9545d1b1a6c285c1928c20ab17c5cddda066d6c0b9ad2e3460a8a44bc605fe54"
    end
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
