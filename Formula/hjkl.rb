# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.33.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.1/hjkl-v0.33.1-aarch64-apple-darwin.tar.gz"
      sha256 "8f376bcc8e0721d0609ff6a962f1c53fa6f645ef4d5e675c58c3a6515c242e46"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.33.1/hjkl-v0.33.1-x86_64-apple-darwin.tar.gz"
      sha256 "5bdc69bdda25b1deaf30fd9db2888e82d70ff8ffd79651942df179126e26f554"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
