# Auto-generated. Source: https://github.com/kryptic-sh/tmxr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/tmxr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Tmxr < Formula
  desc "Tmux-style terminal multiplexer for Linux, macOS and Windows"
  homepage "https://github.com/kryptic-sh/tmxr"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.3.0/tmxr-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "d91dd9f7ba5a75c81a7de0b1304185b21b9249d8b951e454e307e3591d4e5715"
    end
    on_intel do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.3.0/tmxr-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "8f48bd93adf535c92cb6369adfddc77cc243bc1edb900b7791743d407107a92e"
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
