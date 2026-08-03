# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.7/pikr-v0.8.7-aarch64-apple-darwin.tar.gz"
      sha256 "0fc36fdf091751172daf91b575c3a94c19a7b700c14243860c57498c12926f8d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.7/pikr-v0.8.7-x86_64-apple-darwin.tar.gz"
      sha256 "1c7cf36d5dc5653a848a54ebd79b2983164faab68406d8b9c48b131127ce4bed"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
