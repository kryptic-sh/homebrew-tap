# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.0/hrdr-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "171348fbf1fd43db7bb2899d64eef43d85ea5c51c8f0ab66a4f59aa5acf0087b"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.9.0/hrdr-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "807c637c4a7cbea354dd4db4ce058702111110ba7e41f2592ba7dc2f5c2d2e97"
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
