# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.17.0/hjkl-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "d78d6b9409b2b05c3cd44cc3ed1410a355fd0e2638addf48787253e073b4a1f2"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.17.0/hjkl-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "7c41cd7834594d78c7223dc1869633998ae5121bd6a33adc05c8397d2b556233"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
