# Auto-generated. Source: https://github.com/kryptic-sh/pikr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/pikr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Pikr < Formula
  desc "Vim-modal application launcher — rofi replacement built on floem"
  homepage "https://pikr.kryptic.sh/"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.4.1/pikr-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "b10c0f12edd2ec4977a3d42e71ce2898f9c270687205770ff73dce1fd18aaf59"
    end
    on_intel do
      url "https://github.com/kryptic-sh/pikr/releases/download/v0.4.1/pikr-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "0c59e2cb48e2550880f97d1495c5922b373bd3a4ac3e803f2d6046c454b5ebc0"
    end
  end

  def install
    bin.install "pikr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pikr --version")
  end
end
