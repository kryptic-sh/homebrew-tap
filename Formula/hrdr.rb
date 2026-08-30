# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.15.0/hrdr-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "62ca7bf91ffe9e476bb0ef60e315284a53a7a41b23db8e7156fc07ce65b25774"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.15.0/hrdr-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "86e1dfb6f7c08623e6daf064affe81eb1a932d70426945be0d9188406e507b90"
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
