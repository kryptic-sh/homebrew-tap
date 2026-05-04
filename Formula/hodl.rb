# Auto-generated. Source: https://github.com/kryptic-sh/hodl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hodl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hodl < Formula
  desc "Light crypto wallet for the terminal — multi-chain TUI built on ratatui"
  homepage "https://hodl.kryptic.sh/"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.3.1/hodl-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "f59ca764028f338be49600d539d58ff8c476adf4c4919f399835083c0a9ab8cb"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hodl/releases/download/v0.3.1/hodl-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "87fc59e68e9383f3caf43956907ae2ae55a72729bac49541aebc920e9298c122"
    end
  end

  def install
    bin.install "hodl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hodl --version")
  end
end
