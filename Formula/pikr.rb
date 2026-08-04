# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.8/pikr-v0.8.8-aarch64-apple-darwin.tar.gz"
      sha256 "fe677c076330870cf896324321565b671164a20b368b4e29099823927a991773"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.8/pikr-v0.8.8-x86_64-apple-darwin.tar.gz"
      sha256 "a5eaff05baf00c837cefd48c9b95a5ba9612ce9358093671b4f26dbe1ac510f3"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
