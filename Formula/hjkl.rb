# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.11.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.11.5/hjkl-v0.11.5-aarch64-apple-darwin.tar.gz"
      sha256 "f089317b766b8d714c13faef75a932d05d841ed4a7209ff9db7f4199aeeb115c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.11.5/hjkl-v0.11.5-x86_64-apple-darwin.tar.gz"
      sha256 "13b395f6224a91604453193c9d7ef96df140682ff4e40718ed095312f20e7656"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
