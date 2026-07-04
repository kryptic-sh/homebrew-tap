# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.5/hrdr-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "d672a25abdb3331cac9bad0f8c0a8e2d8cb487889a690f2d966f4bfde1dc6950"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.5/hrdr-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "96cc375b674a97331c04bd2b0e0e1769bd2c1ee80f0ab7e6b95fa1932550af38"
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
