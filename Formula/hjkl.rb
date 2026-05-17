# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.20.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.20.3/hjkl-v0.20.3-aarch64-apple-darwin.tar.gz"
      sha256 "ca2f21456256bc5e3b9788b13fb03c611dcc748e75ae0fe85a00546575e458b8"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.20.3/hjkl-v0.20.3-x86_64-apple-darwin.tar.gz"
      sha256 "0cd26e9c49969f17e77e1b02ef6500ee2be0f4541092a5ec18a18d5be23e52d7"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
