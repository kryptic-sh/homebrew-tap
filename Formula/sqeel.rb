# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.5/sqeel-v0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "174269132649dab1b50b49cdfbbeccebdcbc0c1ff2770e86bd62416d9c783424"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.4.5/sqeel-v0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "f044127be408d4be74a90b4e91061edcbc4fdfa1862f7cc96d072cf57e416b8e"
    end
  end

  def install
    bin.install "sqeel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
