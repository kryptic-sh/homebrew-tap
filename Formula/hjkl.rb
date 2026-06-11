# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.32.0/hjkl-v0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1d7d241d21adfeb7880fd758763ed623b67b3106fba86c3ad79d87ed81c8b6d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.32.0/hjkl-v0.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "b23acb0b846e2819343b05c44fb2337d234d9703224c62ec0c1475ecffcab57d"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
