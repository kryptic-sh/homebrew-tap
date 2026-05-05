# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.0/sqeel-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "05f8c211d9eb1c162aa65d4bbefce6a35f463ac9ca51516b647d53dd92d19b60"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.0/sqeel-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "e19b8530d97f2aff4939330c19345a4991bed8826e98a238581d9b09150e1445"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
