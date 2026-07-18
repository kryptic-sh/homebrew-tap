# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.6.1/hrdr-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "5211b19ca2e304450dde9fec31bf153893498e3cf4c5cff8bb1eedd366fb900a"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.6.1/hrdr-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "d5f6d58d5baf879ae44736d8cede8a904bcfd337d2e7dc0611f383d2506e1527"
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
