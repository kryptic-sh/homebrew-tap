# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.11/sqeel-v0.4.11-aarch64-apple-darwin.tar.gz"
      sha256 "a1bed455ed978408c56ee202c05f0e665601de6198963b063a99e688a2703be8"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.11/sqeel-v0.4.11-x86_64-apple-darwin.tar.gz"
      sha256 "353952448c6e1626f05ca6d8755bf9e7aeca459475dbeb111fe31f14f006f4dc"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
