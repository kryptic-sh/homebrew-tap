# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.3/hrdr-v0.8.3-aarch64-apple-darwin.tar.gz"
      sha256 "7bcbe2512198efe8896ec5add5afc2676f9549a33a09e1ade366cebde65df181"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.8.3/hrdr-v0.8.3-x86_64-apple-darwin.tar.gz"
      sha256 "6a12cacb8f2ea647c5323683ba985b48d933bcd6bf438473caf76725c1e16dda"
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
