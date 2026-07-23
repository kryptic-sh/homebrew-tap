# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.7.0/hrdr-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e6505bbfce4d2909ddd5195b14a7900ff7f265b65c66027488c2eb9013de84e"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.7.0/hrdr-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "a2f21e622053bb13a6003cfc83bd85133bf29358799cc436439c0fdb71eb6a35"
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
