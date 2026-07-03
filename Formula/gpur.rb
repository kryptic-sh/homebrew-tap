# Auto-generated. Source: https://github.com/kryptic-sh/gpur
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/gpur.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Gpur < Formula
  desc "btop-style GPU monitor TUI — NVIDIA, AMD, Apple Silicon"
  homepage "https://github.com/kryptic-sh/gpur"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.8.0/gpur-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "0189c6ea80bdde15cda53572fc55d91cd6811c182838835b59f2013c2a1458e4"
    end
    on_intel do
      url "https://github.com/kryptic-sh/gpur/releases/download/v0.8.0/gpur-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "ea4fcae74a0ecf94b159a3ac9fa195d1063e827ff8f56cdbbced27fcc0c6c1f6"
    end
  end

  def install
    bin.install "gpur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpur --version")
  end
end
