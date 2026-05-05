# Auto-generated. Source: https://github.com/kryptic-sh/inbx
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/inbx.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Inbx < Formula
  desc "Encrypted local-first email client for the terminal"
  homepage "https://inbx.kryptic.sh/"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/inbx/releases/download/v0.5.0/inbx-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "4e33e08f52cb26d144d4eeccf98a857de18d751e8f3ddc43fc4da4f1cc8d75c9"
    end
    on_intel do
      url "https://github.com/kryptic-sh/inbx/releases/download/v0.5.0/inbx-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "faf726e47a284ab4da6bc2de0a27ff2f12a722f7eb159d0cdc4b6f0c54045eda"
    end
  end

  def install
    bin.install "inbx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inbx --version")
  end
end
