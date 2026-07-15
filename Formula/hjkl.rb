# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.34.0/hjkl-v0.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "2764066475519c2c0a16aae3b8f9a6666684baa279c7fa40dbf2c30f8a77faf7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.34.0/hjkl-v0.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "7608f283bef32818db61d57b101171635861d4342185f6d0dbf78b8d77b37975"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
