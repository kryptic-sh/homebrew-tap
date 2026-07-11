# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.10/hrdr-v0.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "6dd32460292d7b912b473075922473e50a3cf58fd38f61078d552f0dcb678f06"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.10/hrdr-v0.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "09c205df92360af33882ed7ffe6abb535ead3eb26bad170e3e32354832258a05"
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
