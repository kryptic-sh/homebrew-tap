# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.4/sqeel-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "d6ceb8e8b6f146394046f8f36d11a2d9855e0c4ff95f06a9a73c656b33c27f50"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.4/sqeel-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "bab022f6b3168b09678ddd803a116f45d2de420fd64eba1994acb67ab6c672f6"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
