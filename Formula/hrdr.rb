# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.4/hrdr-v0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "039e8023e4f4580708bec044cd5c07d389b6083eb99fc5b49639f923d8196595"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.4/hrdr-v0.9.4-x86_64-apple-darwin.tar.gz"
      sha256 "cbdaf14323fa6d826d380aa1861b0d17e993affe506d5261f013b274e55a604d"
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
