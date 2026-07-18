# Auto-generated. Source: https://github.com/kryptic-sh/hrdr
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hrdr.rb.in` in the upstream repo and
# let `.github/workflows/ci.yml` rebuild on the next release.
class Hrdr < Formula
  desc "herder — fast, agentic coding harness for OpenAI-compatible models"
  homepage "https://github.com/kryptic-sh/hrdr"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.6.2/hrdr-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "06ff6990926fdd7e83ea58e754d437d72fec1144da990d39207a03b274a85930"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hrdr/releases/download/v0.6.2/hrdr-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "5a4fed96911fa7c1be2b528fcc99919c2c93ba31e917f34fe40cb2f0f0874644"
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
