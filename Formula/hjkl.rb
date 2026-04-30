class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fb59393a860fc7fb9d344c3b5d88577180028657acfed3e108f09b11cb34b004"
    else
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "107f066edee8c462dc75567cdb50f48c9a1ebba73a9a8bf0be1f854d939d3945"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba0e3441f05a6c97539a26a2d6a27c2ac2a590b64b0b2633bcf39c78659802a7"
    end
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "efa7559244668f505f176e22386bb5fffa4309b0e5d29369c8b7c9f176280b53"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
