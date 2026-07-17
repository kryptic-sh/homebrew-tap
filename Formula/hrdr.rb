# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.6.0/hrdr-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "153705b9f36739dc1a1d8a794da40f6e7a9b72401201808c61eae93c4d8e0075"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.6.0/hrdr-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "19ab3bea98d34cdd90da0cbfe3b60f9c6bdec7d0196d56e60c7e4f5c8fa79015"
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
