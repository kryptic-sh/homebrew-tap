# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.2/hrdr-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "cee3af934a7ad7b5e4b34553fa6e9f65b73ff6d902441ca93374d7d2c6a0d8b7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.2/hrdr-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "9044e1a9a4d86eb3850f867745e5b2c120f8b7d9bd6ce113c36af5bb50bea7c1"
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
