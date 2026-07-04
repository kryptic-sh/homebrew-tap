# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.4/hrdr-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "ba4358c8359edc1924b017df6eadc88699f18114c4160441b9e8b293eb2722db"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.2.4/hrdr-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "1238c2f566add142ebd0aec23e796a6a23c31481f94dbc0fefed7b4c0671dfed"
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
