# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.17.0/hrdr-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "acc88b6de8b767c0b8638b959e3d5d8012ac88b7c72d4ce014ca2d6d0a7db0e7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.17.0/hrdr-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "fae03a25a4116ec61c1d046d8deb1c5b3f9ae28ab7a741e8854c7968cc63d655"
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
