# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.11/hrdr-v0.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "8baa8763535eeb2c2f59529fdf51e4c1f837791662b93b034283a8a5090170f1"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.11/hrdr-v0.2.11-x86_64-apple-darwin.tar.gz"
      sha256 "9a3abf6aedd97e8c8bbb0f893932499c8ba82d0cb7651bd8d86e9f46fc494e98"
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
