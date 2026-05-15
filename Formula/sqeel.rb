# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.17/sqeel-v0.4.17-aarch64-apple-darwin.tar.gz"
      sha256 "3d4a2f22d9ba137e2aba703dd714836c468f233295c99b129025ba08509c0555"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.17/sqeel-v0.4.17-x86_64-apple-darwin.tar.gz"
      sha256 "e1e3a523d5eadf825d08c1bd6a6358d6cc854759d52ab4cc0d28d9aed599672c"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
