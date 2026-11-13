# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.10.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.10.0/pikr-v0.10.0-aarch64-apple-darwin.tar.gz"
    sha256 "dd709396026c85be1c871f199270215924ec5acc15af331acccfe24d2199ab29"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.10.0/pikr-v0.10.0-x86_64-apple-darwin.tar.gz"
    sha256 "00ad6965bca2b712471bb04232c657fd7ba02638d3e27683688bb5045900c424"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
