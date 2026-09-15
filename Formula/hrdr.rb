# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.16.0/hrdr-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "3b394c24d72c68fb7b59e33e0dc5f9eebc954466bc205366405a06e1ccb4cd00"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.16.0/hrdr-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "392a81eb0bdc24df4bc957f48b879ac8fb2da8582e00f2cd7838f3d20c8e0fdc"
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
