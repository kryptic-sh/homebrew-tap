# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.8/sqeel-v0.4.8-aarch64-apple-darwin.tar.gz"
      sha256 "84e4c6ed9d5dd15580ffd31a8af28dfce14434271bc9647b2b76e9755fedd856"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.8/sqeel-v0.4.8-x86_64-apple-darwin.tar.gz"
      sha256 "da08b78c219a0aba23abdab6cecec1a141944120ef26d8b7f6981011d24fea85"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
