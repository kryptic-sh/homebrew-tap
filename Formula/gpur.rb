# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.13.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.3/gpur-v0.13.3-aarch64-apple-darwin.tar.gz"
      sha256 "27b7a5a41cae818a63554da56072297ee2eb16dee42255c9e35fde8f5e16564e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.13.3/gpur-v0.13.3-x86_64-apple-darwin.tar.gz"
      sha256 "8330bd1c1f7940ee79120595ff81ad5deb8ba36c7f1fb989527eae22a7323c4c"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
