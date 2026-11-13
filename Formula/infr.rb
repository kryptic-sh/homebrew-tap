# Auto-generated. Source: https://github.com/kryptic-sh/infr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/infr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Infr < Formula
  desc "Pure-Rust LLM inference engine with an OpenAI-compatible server"
  homepage "https://github.com/kryptic-sh/infr"
  version "0.3.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/infr/releases/download/v0.3.0/infr-v0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "43410280ea15c8a30ead0d6fe088b3d1ac015f48ef65653da8c966cab6c1c01c"
  end
  on_intel do
    url "https://github.com/kryptic-sh/infr/releases/download/v0.3.0/infr-v0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "f302b249c857ea6cb8b5dbf44bfcbad4ac8dafd67817c2b0d0c207553877d590"
  end

  def install
    bin.install "infr"
    # Default shell_parameter_format appends the shell name:
    # `infr --completions bash|zsh|fish`.
    generate_completions_from_executable(bin/"infr", "--completions",
                                         shells: [:bash, :zsh, :fish])
    (man1/"infr.1").write Utils.safe_popen_read(bin/"infr", "--man")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/infr --version")
  end
end
