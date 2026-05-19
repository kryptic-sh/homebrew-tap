# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.3/pikr-v0.8.3-aarch64-apple-darwin.tar.gz"
      sha256 "b5051d644ebc8f9fc0c8352d01d113215c953ce2952fc2303ccbadee381e302e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.3/pikr-v0.8.3-x86_64-apple-darwin.tar.gz"
      sha256 "46e797f61009a48b2ef07be62970125adb055565ecbe1f4c2bb2b145d87d8044"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
