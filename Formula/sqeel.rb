# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.2/sqeel-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "493bb16eac19e901a49864448bd348b60ad3271911af3e624edca6ed6d586ec9"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.2/sqeel-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "6042a8a71adab93598227857392f3fa794fb31b4089315e5529445f79d1d4016"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
