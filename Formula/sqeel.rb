# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.5.0/sqeel-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "c13a036aba14db1c910dbdb75bdf944e5eb39344bb92d67c69c1ccd9ce3b5875"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.5.0/sqeel-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "255e844ee910ba711005279088b70c834824b28b5a3d554ee19fbbd6423bf42f"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
