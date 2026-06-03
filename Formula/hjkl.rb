# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.30.0/hjkl-v0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "a75967c453068e39947d76db5ee4a6ffd7a718ee96f06cb6a998ed510c5c8fb0"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.30.0/hjkl-v0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "79aa3153b447dc111aa7681474c9908cc48628173ffd65698e7087310e871cf8"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
