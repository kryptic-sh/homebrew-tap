# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.15.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.15.3/hrdr-v0.15.3-aarch64-apple-darwin.tar.gz"
      sha256 "fdcd40c8223cfcd1f1355ae9d634603c9c5a948df00b3efb006892f0f9bc3fce"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.15.3/hrdr-v0.15.3-x86_64-apple-darwin.tar.gz"
      sha256 "fd6eb907bc9ad431bd96e80e114cb0f4b9ca02846a70ae4204172096d32a3a71"
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
