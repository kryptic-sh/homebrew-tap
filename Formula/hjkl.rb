# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.22.0/hjkl-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "4df2dd63b033935d75182b69f9116c0b9e18a67667eed062a7e0310c2ce17390"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.22.0/hjkl-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "297213557b326fdb7bd94908d7ecd1d0cc38e711e7eb2b64ff7e3b429c13fab7"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
