# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.16/sqeel-v0.4.16-aarch64-apple-darwin.tar.gz"
      sha256 "2aed987b559755055249cbc756d073c03b1c0d6e7000a9d09af0f20a86293baa"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.16/sqeel-v0.4.16-x86_64-apple-darwin.tar.gz"
      sha256 "a7f0396f4b660eed82ba3b5d3df6dc128df19a2d1af5389dd1710d5c8b6349a8"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
