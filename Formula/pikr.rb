# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.4.0/pikr-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "d1d148cfa643c4e7ed99b51e5689a70edf86c6b15a8f5736f06e6b2664cc5fff"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.4.0/pikr-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8dcfefd0d2d6808f5902ad430304afa50fc6c3b7e8c020482c0efd944228a62c"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
