# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.10/sqeel-v0.4.10-aarch64-apple-darwin.tar.gz"
      sha256 "1e957b11abfec88ad603b46b516415249e5337d44e7bf9fbb67d635472ee7b6d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.10/sqeel-v0.4.10-x86_64-apple-darwin.tar.gz"
      sha256 "ab9d4f391ae9aef4245cb151501447128d7b9141a7ad56e1ab0ab28d1108386d"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
