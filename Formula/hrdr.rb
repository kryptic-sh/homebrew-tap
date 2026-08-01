# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.10.0/hrdr-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "190e3fa8bdbebcda4793776cfee26c701f8f5bc6e683dc80fcc6410263231ade"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.10.0/hrdr-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "b8e26e171d62dd4fa09e33d41a02f24f3721cd92075a2d84e3cfeb2f5655dc61"
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
