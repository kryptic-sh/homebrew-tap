# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.9/hrdr-v0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "40aecfea1095ac1730d5d288de6a54511e163ffb836b85c51f9316eecfbdb3e2"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.9/hrdr-v0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "f19162cd71e79124c8548bfec80c773f0970e7bd5387161ac4b5fb960bff0841"
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
