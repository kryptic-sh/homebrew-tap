# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.5.2/hrdr-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "1ab767b76a94a1d318a38e52999e587730beef9840f1d812c2a09f76d9a0c694"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.5.2/hrdr-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "ee3a28ffd2ac39cd4021a636754af8e98744b51b95b82c9e7c9d44b6de497bf0"
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
