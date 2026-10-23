# Auto-generated. Source: https://github.com/kryptic-sh/tmxr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/tmxr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Tmxr < Formula
  desc "Tmux-style terminal multiplexer for Linux, macOS and Windows"
  homepage "https://github.com/kryptic-sh/tmxr"
  version "0.10.0"
  license "MIT"

  # Homebrew loads each formula for every OS and architecture when it taps
  # the tap, and refuses the whole tap if one has no URL there, so the URLs
  # stay outside `on_macos`; `depends_on :macos` keeps it macOS-only.
  depends_on :macos

  on_arm do
    url "https://github.com/kryptic-sh/tmxr/releases/download/v0.10.0/tmxr-v0.10.0-aarch64-apple-darwin.tar.gz"
    sha256 "109f6865ed67b5da4a602bf64b29f90c4f256e1bf6394c16d5af28a6e85cbba3"
  end
  on_intel do
    url "https://github.com/kryptic-sh/tmxr/releases/download/v0.10.0/tmxr-v0.10.0-x86_64-apple-darwin.tar.gz"
    sha256 "29bdc3a7c774390e879a90630abe6625e9ace7c7952a40c65d19ab8aa1c0030c"
  end

  def install
    bin.install "tmxr"
    # Default shell_parameter_format appends the shell name:
    # `tmxr --completions bash|zsh|fish`.
    generate_completions_from_executable(bin/"tmxr", "--completions",
                                         shells: [:bash, :zsh, :fish])
    (man1/"tmxr.1").write Utils.safe_popen_read(bin/"tmxr", "--man")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tmxr --version")
  end
end
