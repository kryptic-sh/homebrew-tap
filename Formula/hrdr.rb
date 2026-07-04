# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.6/hrdr-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "530600f2a0715f85c29a95b936f0c96237f6d195e18cfe1729e49a36336be43f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.6/hrdr-v0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "7fb2413f0c5ef31ffe385e8976664a78a7c55c292b15672333da109abef9698e"
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
