# Auto-generated. Source: https://github.com/kryptic-sh/hodl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hodl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hodl < Formula
  desc "Light crypto wallet for the terminal — multi-chain TUI built on ratatui"
  homepage "https://hodl.kryptic.sh/"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.6.0/hodl-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "9ac022bb6d9366d3b88082a5aced6337c9be44691286811c5707b464fdc74fd4"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.6.0/hodl-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "398dd60f765cd184df859bad011befca44a451af21ea5793f456d55d4d0f9425"
    end
  end

  def install
    bin.install "hodl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hodl --version")
  end
end
