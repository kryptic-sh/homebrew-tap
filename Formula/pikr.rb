# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.1.0/pikr-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "46bebc04137ccc2e5344769ca5d18eafa3cd63e42fcb6041b89623b76643db17"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.1.0/pikr-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "00c7274aab1071973b64098af936278eb3d2155deece5f5bb64d44e93ce387a8"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
