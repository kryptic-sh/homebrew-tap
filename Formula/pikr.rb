# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.0/pikr-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "b17bfce00a3d535665b2292f318fd681291178486566ed7c1e4a79f507cbdb6a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.0/pikr-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "768c13c4a03685407eb4fbc7ae4414ca62de24e8038b1ac3590efac66c83a137"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
