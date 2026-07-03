# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.1/hrdr-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "147522fbc87cdf8ee670048aafb0b5408bdc10f36b952317ca5537c0468d9a1c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.1/hrdr-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "205d32126d0a39f42d17dcce6e338b08fae1a98f3bea693e42c2ec864efdf87b"
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
