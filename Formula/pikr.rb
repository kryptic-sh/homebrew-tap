# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.4/pikr-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "d4501c8c141ed2c311af73d349b6126f8b0a0386783f78688948e86abf4255a7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.4/pikr-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "a9b8a87c2c22a5607f81cbfe08c7eceb48677edf964a9566e5126d666a010408"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
