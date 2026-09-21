# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.7.1/sqeel-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "343b3f1df06a511461da68b6bfa2a2cfcfd298a94d9cbf889ef7f00735b7236b"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.7.1/sqeel-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "f1389fa4cc1f6597cd8ae8091b270524e2d8d105b7c8f4b8d01f102909a6b0b6"
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
