# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.12.0/hjkl-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "b995861948ff5c3369a8b983a2528ca0f535dca6c7748d17eaaedb986a895824"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.12.0/hjkl-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "955807ea870490cf9993751567a3014954c48711f8bda99b0b9c178e4139fc5d"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
