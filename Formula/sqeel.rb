# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.7/sqeel-v0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "548f360a751b61c70aa6f21004f6891b85c648cad0ddc0aed60ce1f4209d154d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.7/sqeel-v0.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "527412e9f7c0048d37e8f2103418da7217301bb84ccb0d84fe156b973b40c9aa"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
