# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.1/hjkl-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "2365ff81d0aa2b529229dd75d0caeaee0408dde06f20361cd75cb0d0bab75786"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.1/hjkl-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "5ad7f1ad182e9d33c3ca4b0f2800312e01a030365d15529f16f660dae963e220"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
