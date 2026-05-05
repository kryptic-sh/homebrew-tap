# Auto-generated. Source: https://github.com/kryptic-sh/inbx
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/inbx.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Inbx < Formula
  desc "Encrypted local-first email client for the terminal"
  homepage "https://inbx.kryptic.sh/"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/inbx/releases/download/v0.4.0/inbx-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "e3f5d4e1641023047d1908b3efa035aa6a5fe76a37f37074c06deeca30f223e1"
    end
    on_intel do
      url "https://github.com/kryptic-sh/inbx/releases/download/v0.4.0/inbx-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "1886f6f043ae37172a462553d3b1638404f68f7db1dff25edf3efb44f3206343"
    end
  end

  def install
    bin.install "inbx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inbx --version")
  end
end
