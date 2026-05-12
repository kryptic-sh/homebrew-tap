# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.9/sqeel-v0.4.9-aarch64-apple-darwin.tar.gz"
      sha256 "a32c60cf074639cf27ed49e7c2aae3a4662e80f0ec0c4d8efc129dd30d5face7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.9/sqeel-v0.4.9-x86_64-apple-darwin.tar.gz"
      sha256 "45cf1895897062d8301eef7d45a4f69bebbaa28b3fab595f1daac2e5f6262941"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
