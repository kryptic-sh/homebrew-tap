# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.0/hjkl-v0.41.0-aarch64-apple-darwin.tar.gz"
      sha256 "34448399465d95fcf3a5ed3040fe7accdcef7815a447be1ac1003cd522e47cd1"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.0/hjkl-v0.41.0-x86_64-apple-darwin.tar.gz"
      sha256 "586ca735c54fce41705cc370b18baf108a6ff4c47b2f02a44bd2ab95d6e76b2d"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
