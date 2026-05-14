# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.14/sqeel-v0.4.14-aarch64-apple-darwin.tar.gz"
      sha256 "7d7e8574e31ed8ccd14603fc4bb9b5fabc8b364437eebf0511e52b524ea69bdb"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.14/sqeel-v0.4.14-x86_64-apple-darwin.tar.gz"
      sha256 "44b01cb64215d04ddb91c9b98c6549cc4449063dd2df2c3201ba598a89219470"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
