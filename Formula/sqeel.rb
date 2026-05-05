# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.1/sqeel-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "ca87e4708bcfb7882135e1e16ca0f9ced640023a76ec5ea7eac3a74bb5d225c2"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.1/sqeel-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "81d524088fa81f2aacbe9e512cddf85d8674b21d00c50640d783c92c665c702b"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
