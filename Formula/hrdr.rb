# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.4.2/hrdr-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "da367aa6b3613f5583dc288069833e871d15c7183f5810921843396557ed483d"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.4.2/hrdr-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "bb08165241bf2ab8bce103bfdb48a5ea510e4f6001db4360464414a745285b7e"
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
