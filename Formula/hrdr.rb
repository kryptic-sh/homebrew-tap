# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.12.0/hrdr-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "8e0956278ed7a17b0285dc70cf8b9987bae8e43709a50263eacca699f7899c69"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.12.0/hrdr-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "6904a0fbbe439279bd9d190466002572828c04099f118560b2af3a5afd907b76"
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
