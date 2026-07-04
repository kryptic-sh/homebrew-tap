# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.2/hrdr-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "46cd9a2b5bda74e960155631f9982c094a7a4f0e9e1ae1242a3addd44b4e1ea7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.2/hrdr-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "03c3ac257490178ce12553f4e0d2bd0ba12a4a1d0f56facf52696a4de6c3536a"
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
