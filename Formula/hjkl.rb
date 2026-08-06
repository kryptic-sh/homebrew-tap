# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.41.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.1/hjkl-v0.41.1-aarch64-apple-darwin.tar.gz"
      sha256 "ad4f700b1dc414400ad927b7c20d5a16af269d17cc82890bce6a96af87918733"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.41.1/hjkl-v0.41.1-x86_64-apple-darwin.tar.gz"
      sha256 "4da0cf829a342b6681c423d57db274b3f786939267695191d302d63bd34c7535"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
