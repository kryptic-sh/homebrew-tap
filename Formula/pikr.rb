# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.6/pikr-v0.8.6-aarch64-apple-darwin.tar.gz"
      sha256 "69246bbf9bbfd2c3837c3ec857cfae0558a910c5e8675e6921bc4722d6cff0f9"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.6/pikr-v0.8.6-x86_64-apple-darwin.tar.gz"
      sha256 "7a16e7d80da12f5cfa0946a48d74b2f78770db4cbf5a5390fb23f19c078cc4a9"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
