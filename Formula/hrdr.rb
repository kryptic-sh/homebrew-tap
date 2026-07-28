# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.4/hrdr-v0.8.4-aarch64-apple-darwin.tar.gz"
      sha256 "7c66eba1bc0632df410671d59cb4579cd5cea5187c109de616f72aac074a8f43"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.4/hrdr-v0.8.4-x86_64-apple-darwin.tar.gz"
      sha256 "340719c9166f03700b0395763f11c4d56c115e778488195c5d42bddcbc16722f"
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
