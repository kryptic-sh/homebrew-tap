# Auto-generated. Source: https://github.com/kryptic-sh/tmxr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/tmxr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Tmxr < Formula
  desc "Tmux-style terminal multiplexer for Linux, macOS and Windows"
  homepage "https://github.com/kryptic-sh/tmxr"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.8.0/tmxr-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "74ce22d0640eaed9ea9792a2e73cf0df2dbd3eb100a2a146567561f533ca04f9"
    end
    on_intel do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.8.0/tmxr-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "fa9cc9ce6d97c5e7a4469cb62ae5437601fb81372da434070abd7423b22b8f98"
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
