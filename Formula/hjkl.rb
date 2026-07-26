# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.37.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.37.1/hjkl-v0.37.1-aarch64-apple-darwin.tar.gz"
      sha256 "a3598d7ab4de4eb2fea95d13dc2ba3da62d37a5d76649efa144977fd5cf8b14a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.37.1/hjkl-v0.37.1-x86_64-apple-darwin.tar.gz"
      sha256 "1af145b5d750cfa32a04cb861fe6f360926fc3140e4762d4590eff8ec99d79dc"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
