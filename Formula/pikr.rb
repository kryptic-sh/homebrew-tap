# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.8.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.9/pikr-v0.8.9-aarch64-apple-darwin.tar.gz"
      sha256 "df0ac10360cbfb11aac4006b5aea9fc3fcba41b1e0591f9da5118abefb787f44"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.8.9/pikr-v0.8.9-x86_64-apple-darwin.tar.gz"
      sha256 "8d29f353deb0f8f27f2907d49bab93eaa94f6bd8155668c9ea217cd4d26c1303"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
