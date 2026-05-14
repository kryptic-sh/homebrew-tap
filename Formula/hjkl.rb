# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.15.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.15.3/hjkl-v0.15.3-aarch64-apple-darwin.tar.gz"
      sha256 "ef5411cc77b60a3f8069a340192ef18a7a27bcf067ae538a7a39cabb64b615dd"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.15.3/hjkl-v0.15.3-x86_64-apple-darwin.tar.gz"
      sha256 "12054a2f60cebe8f1821a0ac0afff804a35c34a7b9ea88b4df7f8a88af7b7fef"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
