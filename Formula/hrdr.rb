# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.1/hrdr-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "9acf9eb85adf26d6bd7dc10a47bdc76584b40dc69a9a43e58f96b21898a776cf"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.1/hrdr-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "493aaa632cbccaf7786dd376d851c3773ce991faff6c3de08ffebb1ec79c97bb"
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
