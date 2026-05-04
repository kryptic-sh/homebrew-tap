# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.3.0/sqeel-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "631f61f2d8bc1ce660e4fea67cc1f4161f1db4dea18719f2147da67162d12a18"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.3.0/sqeel-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9b1783f382455a4b755f90acb5ca91adb64bbd214719fefdfb8bf8692affa072"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
