# Auto-generated. Source: https://github.com/kryptic-sh/tmxr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/tmxr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Tmxr < Formula
  desc "Tmux-style terminal multiplexer for Linux, macOS and Windows"
  homepage "https://github.com/kryptic-sh/tmxr"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.7.0/tmxr-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b35a90c929d4140cb128e73bb92ff5eb2d6a4da7783bbc1189d3487acddc466"
    end
    on_intel do
      url "https://github.com/kryptic-sh/tmxr/releases/download/v0.7.0/tmxr-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "2d4330ffbcbab869a1b086c0243df3008850aa91915a0c00864136c2fce09276"
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
