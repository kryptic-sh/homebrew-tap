# Auto-generated. Source: https://github.com/kryptic-sh/inbx
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/inbx.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Inbx < Formula
  desc "Encrypted local-first email client for the terminal"
  homepage "https://inbx.kryptic.sh/"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/inbx/releases/download/v0.3.2/inbx-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "0b3700411ca3e59a766f60764a18a2ae11255b4d0ef3148be2140ca7bb5e0b2d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/inbx/releases/download/v0.3.2/inbx-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "7233c80104ad4864127edb01c001db80730b21c865c7a1fd17d6f5d888543027"
    end
  end

  def install
    bin.install "inbx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inbx --version")
  end
end
