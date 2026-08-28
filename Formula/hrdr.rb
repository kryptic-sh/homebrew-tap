# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.14.0/hrdr-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "1c8dbc07566a7c2965329656c3f91ae4a5e679c24bb9cc0537ae1a5bb863fe3c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.14.0/hrdr-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "28f45ad275d5599fab56df9f2862696f66028303289973936cff56bc8e3d483d"
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
