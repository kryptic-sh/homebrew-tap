# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.25.0/hjkl-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "2f244e0b9a3b00ae503ee206fe23001704465761636a543a05c89f3a4655c707"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.25.0/hjkl-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "d559adc1cb404ed996fee0df4ea6ee45bed73709b6e3a95287e089332efcdac7"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
