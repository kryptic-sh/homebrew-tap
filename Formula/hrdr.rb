# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.13.0/hrdr-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "c4faee01e7af6ad26b9a21593ceebdb65248e2d3a12ce8533ee10f3b8adc3361"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.13.0/hrdr-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "8a65204e636d20f4903985770c444cb64d4ec2121cf5f13d2b24dd0cf77fcc31"
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
