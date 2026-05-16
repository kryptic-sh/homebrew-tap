# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.2.1/pikr-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "800f9ffb95b4a345aec569ae2a9aa21ec8d799d77b09bf422f973d530dbc899f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.2.1/pikr-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "0843b685beab31afe0596181e7249e98794bfb1c2b5304355cd4c15b2e72aa85"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
