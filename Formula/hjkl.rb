# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.27.0/hjkl-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "63b5764f717c122cbc2035e2e5c07dd0554e025611eaf79a8668fc62c5da205e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.27.0/hjkl-v0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "53b4821ae150d3d3f0bec35a9bdc51adb2743ac4b7514d12a56086b85c980d88"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
