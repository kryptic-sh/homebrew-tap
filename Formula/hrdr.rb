# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.7.1/hrdr-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "8dae256a8cf1bcd0056ad4b8a1d1385598530b7ab8db1a0b161de37f108b53c4"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.7.1/hrdr-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "b13eb7243a9605785818742b6ba3796c7e099ba3ca8bc53e3235773b20504b9c"
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
