# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Intel, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.10.3/gpur-v0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "99a776f7ec459ff391cbc51011d3ced6e721be5f13f3dd78ccaec949af13e636"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.10.3/gpur-v0.10.3-x86_64-apple-darwin.tar.gz"
      sha256 "caa7264558baadb461ae2238f009af5bf56918b7a40129106709e6406ac9e490"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
