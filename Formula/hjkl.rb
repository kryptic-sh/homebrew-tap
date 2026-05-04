# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.10.1/hjkl-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "ba457e83ebe60c21d15c99b6a9877a265163ac431282b8d6c85c75f0d0917e1e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.10.1/hjkl-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "b6a166b725499df0c8bc256e6713cd1dde1fde9cf2b11e5db18a421c6c829362"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
