# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.39.0/hjkl-v0.39.0-aarch64-apple-darwin.tar.gz"
      sha256 "22600dc1239bb9d0a57098d29f7a85916f79801c1e1456c95a8ef5a8b8e291df"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.39.0/hjkl-v0.39.0-x86_64-apple-darwin.tar.gz"
      sha256 "95f6c26b31901c7ec56f56c776af5e3d4049287567f6f89910950fd65ff68835"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
