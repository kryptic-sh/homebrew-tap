# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.14.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.7/hjkl-v0.14.7-aarch64-apple-darwin.tar.gz"
      sha256 "c4ea5dc6eeb61e8bfa6f719bca9f036be1821757acc5dbc6497f9d13a2964403"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.14.7/hjkl-v0.14.7-x86_64-apple-darwin.tar.gz"
      sha256 "3c4ea637af98d4f46439a672d71e2b394a32d38e54144db136de23bb62faa881"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
