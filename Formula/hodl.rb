# Auto-generated. Source: https://github.com/kryptic-sh/hodl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hodl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hodl < Formula
  desc "Light crypto wallet for the terminal — multi-chain TUI built on ratatui"
  homepage "https://hodl.kryptic.sh/"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.7.0/hodl-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "7fdfb22fb2f90607d9ac62a32117a1fafbbb29ca56b2f7378c7587375a906995"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.7.0/hodl-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "fb9f7a37b1138220db3043a1dcb43788bddb406679a5dcb94e432c92b285de91"
    end
  end

  def install
    bin.install "hodl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hodl --version")
  end
end
