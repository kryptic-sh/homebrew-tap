# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.8.1/gpur-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "6404adb592d1a9780960dc83caafbebf9c1302bcc96a9c771c4f4ca98bfde3e2"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.8.1/gpur-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "7681cb0d33260fe899ff7ab33206084389903b21887cfe17f9cc1f8ed056b2e5"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
