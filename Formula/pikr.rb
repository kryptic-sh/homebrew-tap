# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement"
  homepage "https://pikr.kryptic.sh/"
  version "0.9.6"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.6/pikr-v0.9.6-aarch64-apple-darwin.tar.gz"
    sha256 "27fda8f2f64e5903019915f6ed9f31490503e9d7bfeac836dd93fbc67f9d602b"
  end
  on_intel do
    url "https://github.com/kryptic-sh/pikr/releases/download/v0.9.6/pikr-v0.9.6-x86_64-apple-darwin.tar.gz"
    sha256 "bbbcf31ab79baa9d753ac5344adc3d475519ae010ebbb1185487b64a8973a1f7"
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
