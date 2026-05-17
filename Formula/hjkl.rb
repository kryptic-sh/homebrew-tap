# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.21.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.30/hjkl-v0.21.30-aarch64-apple-darwin.tar.gz"
      sha256 "dee9e34dcf3af485b72680ee43750aad3ca8ed2771aabd2af7321ed14fd29913"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.21.30/hjkl-v0.21.30-x86_64-apple-darwin.tar.gz"
      sha256 "a6b85a51d2b9d13bf35b6252961a5a16bbd5d42f4804f9b9c81fbd8095d83339"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
