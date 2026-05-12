# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.6/sqeel-v0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "913157030ba0bfe36dca9008d906e0b1f92212e5770965a2741e8039281bc3c6"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.6/sqeel-v0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "cd5381ee407ffad19e49de39fdab1de6174d5a8334f3aebc5609abd392a04569"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
