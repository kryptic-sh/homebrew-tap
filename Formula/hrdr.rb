# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.7/hrdr-v0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "8901df2f7495ac256ed5750970da6a91e79d89fd5e28f748a0e7635b80e83c34"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.7/hrdr-v0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "8087e32a70b200da690b179ae784d676b2d7cbdf159f261c7f0e0312b4163325"
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
