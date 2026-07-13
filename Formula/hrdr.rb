# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.3.2/hrdr-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "81f02c5689f0ab0976329ea5ca3c24ee69faff6a1ddd725338c7ba23819bc92b"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.3.2/hrdr-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "c3c99a1d251a2e20a692deec8e5c7bf333c36230228a25a8db76ad13c217b8e2"
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
