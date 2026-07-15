# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.4.0/hrdr-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "753b45f39c7af0f38c4308011297e7e58c2c459020f0045acee8c38e90f52883"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.4.0/hrdr-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "736fb056ea313ea012dc0faf1461849d8ec28744baaa7c0f50c4820f46b027a0"
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
