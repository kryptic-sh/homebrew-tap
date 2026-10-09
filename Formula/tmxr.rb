# Auto-generated. Source: https://github.com/kryptic-sh/tmxr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/tmxr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Tmxr < Formula
  desc "Tmux-style terminal multiplexer for Linux, macOS and Windows"
  homepage "https://github.com/kryptic-sh/tmxr"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.2.4/tmxr-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "8998351c720062ff27614ab35e1e58ca94137e6a4b13d8a5ae096f5c1595916f"
    end
    on_intel do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.2.4/tmxr-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "b46e6b6b3bc8c117d897c24b0b8fdc92c82123b9d3f6733302a91a8b9e7f0ff5"
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
