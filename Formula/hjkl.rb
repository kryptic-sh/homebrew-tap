class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "708b18734c3220a13db6848f7e5f0106c3b46200fbb31cd9c4d7b1fe66f1cd74"
    else
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "729632d88bcfbf5ed16d47bd450dadeb69d6e2dcd023195ad1f96553687153b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "618812ca1e111d0b63484c6341371a1809977321c75e822141dd69ce541a88e6"
    end
    # Linux aarch64 lands in 0.3.2+
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
