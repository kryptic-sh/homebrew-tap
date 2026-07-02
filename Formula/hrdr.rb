# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.1.0/hrdr-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9957e800243cdcde81a1a7ff44f33927e6a43d99f102bddc6c741012ae2344ed"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.1.0/hrdr-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0538ef141a12ce3ceacb84f4b97f9ffd2d3003ff706ff754236ea65acfa0e161"
    end
  end

  def install
    bin.install "hrdr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hrdr --version")
  end
end
