# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.11.0/hrdr-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "ebae1372dd40dd8a7d658ffe686d460cc1240c23e2181c9d0ad81d143858affd"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.11.0/hrdr-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "c8c495ddcee60a555d18cb5e62e30f9a3f1959a6e20144bd339504ba12fdd67c"
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
