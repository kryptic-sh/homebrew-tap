# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.9.1"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.1/pikr-v0.9.1-aarch64-apple-darwin.tar.gz"
    sha256 "5b2c1d7ef78c75c22fd8c728fb907487d3d5ebfb354a1d7681e3e5041d699852"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.1/pikr-v0.9.1-x86_64-apple-darwin.tar.gz"
    sha256 "3c863b32c106c1a6cfb5f15c16a563a3721f4ff503850bc47daeca805085ba1c"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
