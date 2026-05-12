# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.4/hjkl-v0.14.4-aarch64-apple-darwin.tar.gz"
      sha256 "193fc5e6493ec32ac547f54d4d04080c3f869858806ef7f316b3976620858cf0"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.4/hjkl-v0.14.4-x86_64-apple-darwin.tar.gz"
      sha256 "e13b8613f209689249d40fd9e1dbda1f09608536120b6c98eba58cfaa1e94567"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
