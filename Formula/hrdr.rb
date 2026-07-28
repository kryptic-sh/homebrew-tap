# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.5/hrdr-v0.8.5-aarch64-apple-darwin.tar.gz"
      sha256 "6140968db884589aa5d1bf66c76bdf87b886fc2e6a0211b211eb2723b7fd0b2e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.5/hrdr-v0.8.5-x86_64-apple-darwin.tar.gz"
      sha256 "ae52a24f4fcf57af548edc432975c79b1215588f0349ea1487893742760c5f83"
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
