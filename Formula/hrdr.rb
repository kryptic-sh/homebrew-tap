# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.8/hrdr-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "fec46d18ee3a6bed573c86051803e1baa3a04e18fab31846c03572b01c2dd3a4"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.8/hrdr-v0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "7b2316747cc6b7535d44f02d9d3dda6db65219927929f2f7eb277771006f9650"
    end
  end

  def install
    bin.install "hrdr"
    # Default shell_parameter_format appends the shell name:
    # `hrdr --completions bash|zsh|fish`.
    generate_completions_from_executable(bin/"hrdr", "--completions",
                                         shells: [:bash, :zsh, :fish])
    (man1/"hrdr.1").write Utils.safe_popen_read(bin/"hrdr", "--man")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hrdr --version")
  end
end
