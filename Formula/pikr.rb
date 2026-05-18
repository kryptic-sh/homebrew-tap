# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.5/pikr-v0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "74b53739951544182477e89a320aa8801a8f2cfe3284c7b6ea66fa524f13da54"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.6.5/pikr-v0.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "9094fe331b9a6679807e8e99bc283ab7cddf084efda36183a2255d7f7884f0d5"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
