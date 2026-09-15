# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.13/pikr-v0.8.13-aarch64-apple-darwin.tar.gz"
      sha256 "c9f63e5f07bb0f647db34c9016d4e08180e0598f61271ba9a1bd8635faa40dd3"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.13/pikr-v0.8.13-x86_64-apple-darwin.tar.gz"
      sha256 "42d71e8e203c9f238c5a8a1d7339604e35dcc335776f5e3d642823564d9fb8cb"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
