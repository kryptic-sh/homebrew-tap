# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.3.1/pikr-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "fb25f309b72df6c9ccbd2074dc98f821f0b82fb2ad77306a78bf1d3bd4f8102a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.3.1/pikr-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "4a2f1bd57dd0d0e0443d32e7b50e8466e4e8948c1944c4620d5760d3bdf32d37"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
