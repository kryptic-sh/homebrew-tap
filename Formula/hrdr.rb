# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.11.1/hrdr-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "2c9000026548d2e3cbd8c15e5c6c84dee0b0ad5b0a02d8ff5347f627ae6a5981"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.11.1/hrdr-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "b079c273c2e72f47126f5fc198710ffef6c93ecc13cfd0559bfa08a5b27d4c23"
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
