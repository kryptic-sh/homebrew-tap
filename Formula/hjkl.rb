# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.18.1/hjkl-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "68893eabd2414d6a15ed34e80a1929c3570e38afbda98646158f056c09ebda58"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.18.1/hjkl-v0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "3642384b475973781137b08b6a77aee2c67da17441b62e853ed149f43a7b2ce3"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
