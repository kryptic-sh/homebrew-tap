# Auto-generated. Source: https://github.com/kryptic-sh/krypt
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/krypt.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Krypt < Formula
  desc "Cross-platform dotfiles manager. Rust binary. Config-driven."
  homepage "https://github.com/kryptic-sh/krypt"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.2.1/krypt-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "73b1e48cc4cb039a8156724daa0db18d978ecf081f9cb5d3478f51686a1535f0"
    end
    on_intel do
      url "https://github.com/kryptic-sh/krypt/releases/download/v0.2.1/krypt-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "1e0f6704ad7fe96809bb4b835a75ab80489cc1c7e438c9c7c3c26ac2db60a85e"
    end
  end

  def install
    bin.install "krypt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krypt --version")
  end
end
