# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.40.0/hjkl-v0.40.0-aarch64-apple-darwin.tar.gz"
      sha256 "623be75f9f429567ae628e79601d37b0eb3f422f22d2aa40e9493b53a7be4969"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.40.0/hjkl-v0.40.0-x86_64-apple-darwin.tar.gz"
      sha256 "a69ceee450ba2df7ee3bc151a19508999c60cb2033528567f46d4af112c9caa7"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
