# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.3/pikr-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "5cfa4654a62996b3676eff021977b1d742a00aa37caf49516b9b945797541d48"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.3/pikr-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "186599a4c4dc4261cf5fd26aaff8911a0bbf3c1a2761bf6752e67ebb03b4123d"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
