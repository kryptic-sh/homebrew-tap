# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.12/hrdr-v0.2.12-aarch64-apple-darwin.tar.gz"
      sha256 "05bebcd7c3010e18bffc4f26b48c500ee580fd7c99b3e122070b196e87af1ed5"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.12/hrdr-v0.2.12-x86_64-apple-darwin.tar.gz"
      sha256 "59ccfab3cd6d1f862f686d56bf484b0f32ee999f76d8b3b3c5932c8f64712196"
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
