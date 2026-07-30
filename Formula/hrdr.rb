# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.2/hrdr-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "bd55dce073b38970a645c671fd749b1096ccd0854c8f657420fb96dab41ce0f5"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.2/hrdr-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "e871248a4b0f078c72a3d28daa90b26f1ec677f2b252b9be895847c6c1f3a3ee"
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
