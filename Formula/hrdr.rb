# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.15.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.15.2/hrdr-v0.15.2-aarch64-apple-darwin.tar.gz"
      sha256 "d09e5cbc6846c105a64f7fc4e0375dfcb1365701c42f2127d0436d3d66b411a6"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.15.2/hrdr-v0.15.2-x86_64-apple-darwin.tar.gz"
      sha256 "5bd928018798dc6c52d80f9e71a9160b6161af196488ef8ab1d56dec106cd972"
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
