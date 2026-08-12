# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.7.0/sqeel-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "13eb2a00924e1fe5258ac61f98ec3f7ac47bb6624b5b3319a7b45441723af4ee"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.7.0/sqeel-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "6032768c1d66614af09e3b85c3130928d04596a2de57e6ef96b170c8a2e38178"
    end
  end

  def install
    bin.install "sqeel"
    generate_completions_from_executable(bin/"sqeel", "--completions")
    File.write("sqeel.1", Utils.safe_popen_read(bin/"sqeel", "--man"))
    man1.install "sqeel.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqeel --version")
  end
end
