# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.7.2/pikr-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "89de48ec28ccb6c5384a719e6462434391c17a5abc312fd9d84150f88c480c3e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.7.2/pikr-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "2609c6c26aee32c53b08ecacd105cf9e0f07faf84245c7675f7656b850763ef8"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
