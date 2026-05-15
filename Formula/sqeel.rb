# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.18/sqeel-v0.4.18-aarch64-apple-darwin.tar.gz"
      sha256 "44bddc05902c0eed309fb094e46472e5d0138b0cbf2e29115502f682d2386de2"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.18/sqeel-v0.4.18-x86_64-apple-darwin.tar.gz"
      sha256 "c96a3594d2c2e730e0c47c286dc8c32d489b0d6a9b872794e93e902a3825c426"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
