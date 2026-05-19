# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.25.1/hjkl-v0.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "22cbf41c066a79f742d682e58e5fac0302d22bdd0bcce01ce2cd6095d4da153c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.25.1/hjkl-v0.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "7e512506f8efee8c0a849e0a391c12ede17f8c61121a036db45ce892d7161ca4"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
