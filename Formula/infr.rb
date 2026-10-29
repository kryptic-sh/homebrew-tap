# Auto-generated. Source: https://github.com/kryptic-sh/infr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/infr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Infr < Formula
  desc "Pure-Rust LLM inference engine with an OpenAI-compatible server"
  homepage "https://github.com/kryptic-sh/infr"
  version "0.2.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/infr/releases/download/v0.2.0/infr-v0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "9fdfee5a5eb7cee3462b6f6ed69c99b8a04b2a2b0f0997b85040b88215259f4d"
  end
  on_intel do
    url "https://github.com/kryptic-sh/infr/releases/download/v0.2.0/infr-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "ecb01a104d4494dbb301dbedfe861afe5acea01a70f1bc903501e1d5e46e379e"
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
