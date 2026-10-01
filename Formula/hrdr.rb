# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.16.1/hrdr-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "aff370ade7fc7cd4a6356561e8114361633b3abb1663dc8d909e0c93827500ba"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.16.1/hrdr-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "0506314dd83428505c5d847ecc689243c72c80b95a06a54be40d834bfce11213"
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
