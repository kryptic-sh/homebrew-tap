# Auto-generated. Source: https://github.com/kryptic-sh/tmxr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/tmxr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Tmxr < Formula
  desc "Tmux-style terminal multiplexer for Linux, macOS and Windows"
  homepage "https://github.com/kryptic-sh/tmxr"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.9.0/tmxr-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "7751230ab0045184de852f3f378578b32c1474d51ec9d8958187c5a2c56f09b7"
    end
    on_intel do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.9.0/tmxr-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "70287436d2b3043e3eba3c4563607128b3c0f02897434edd1c19fdd7b957022a"
    end
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
