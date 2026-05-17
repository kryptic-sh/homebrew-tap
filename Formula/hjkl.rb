# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.20.0/hjkl-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "a7471a7def4a5e7def9e0e8c397be0802889938993d021efc04b841df5e15466"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.20.0/hjkl-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "94911f42f48c96c3935e5cb29be819d5eb6101873d940527567210d0617eaa8c"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
