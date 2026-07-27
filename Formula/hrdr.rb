# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.0/hrdr-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "e729e1b57a7a3119ceb7661365a85acac10fd66adbe5ac3008c5b0bd9320bd78"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.0/hrdr-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "009b85cc0f15d2d8bcb957ecb51381603ba587cb42ac4dcd1057853d09c4ea8f"
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
