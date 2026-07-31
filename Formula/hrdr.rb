# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.3/hrdr-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "0612e3fad83a303d6af81dcb46383d2421da9efc5a02c90a1eb4b456bd5881fb"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.3/hrdr-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "5d97e5d993dbe3ad2bbe672d1ff73ce2b4bce2ee484a8a57dd89a7044cb83aa8"
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
