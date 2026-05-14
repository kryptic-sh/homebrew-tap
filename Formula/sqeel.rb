# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.15/sqeel-v0.4.15-aarch64-apple-darwin.tar.gz"
      sha256 "7d7ca2d0dd51f28b25ca8120e26a025037be272087c26b96583d1d863d1d61c4"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.15/sqeel-v0.4.15-x86_64-apple-darwin.tar.gz"
      sha256 "a0e18f0495b698551f5f3780e008f1efcb4069ec361b28531fdd02076ac2b1cc"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
