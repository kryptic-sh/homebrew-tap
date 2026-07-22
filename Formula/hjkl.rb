# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.35.0/hjkl-v0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "156e134016fbb21771390419b55e79c6a8eff3fed8268650f5c353093ad56381"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.35.0/hjkl-v0.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "24f74a1c4798a4d844475b57491fe542bbf264da3c54054c94442cd5ee07fdcc"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
