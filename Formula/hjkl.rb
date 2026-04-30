class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "99c34ec09ac6f56c36649610a3d65b0617f2a79a4e8d60cd61c8ef5c7b5abaa0"
    else
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0f554909e03c02712f80430b02b34b393a967caaeb7193d72c7f0e47381d1d4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b18d15da553a97167ec7b7e0d12f266ac14d242681add4b9c7524b87b7222210"
    end
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v#{version}/hjkl-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d7b51764bf8ca0c7cc929eacc966302410f009951c07520832f45c9734bdb40"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
