# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.43.2"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.2/hjkl-v0.43.2-aarch64-apple-darwin.tar.gz"
    sha256 "ac4b7fabb777612bf3ea7830cfdfe0768dd66b1ccfcb45098525721eabc29421"
  end
  on_intel do
    url "https://github.com/kryptic-sh/hjkl/releases/download/v0.43.2/hjkl-v0.43.2-x86_64-apple-darwin.tar.gz"
    sha256 "e1fb1ec43b31fc3c7ed7f0b171d6d87afbca8af366a78e2c1635e41f7a94d624"
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
