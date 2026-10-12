# Auto-generated. Source: https://github.com/kryptic-sh/tmxr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/tmxr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Tmxr < Formula
  desc "Tmux-style terminal multiplexer for Linux, macOS and Windows"
  homepage "https://github.com/kryptic-sh/tmxr"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.6.0/tmxr-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ca20a626e00fdd6b1fd18901b75419119191e9a188a273250068b88a5cf0b4b"
    end
    on_intel do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.6.0/tmxr-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "7f7158fb268d00f24accf1e6d2cf67984f6e4c86a42350dd30f88ced88c8ae01"
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
