# Auto-generated. Source: https://github.com/kryptic-sh/hodl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hodl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hodl < Formula
  desc "Light crypto wallet for the terminal — multi-chain TUI built on ratatui"
  homepage "https://hodl.kryptic.sh/"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.7.1/hodl-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "9c1e915ddddf234197f6d432f4980dea432f65a6d57fef09f844ea38722cebef"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.7.1/hodl-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "008c1f0ca9c71c3f619048e25cc049c168af7c4b10781b59fddc6ad3ccc6f65e"
    end
  end

  def install
    bin.install "hodl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hodl --version")
  end
end
