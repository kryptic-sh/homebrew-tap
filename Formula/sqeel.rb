# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.6.1/sqeel-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "0bc3fd33d2ddf3cf2e4df5dbc231e3b7324358dbf4f22cdbfc6272ee3cbea47c"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.6.1/sqeel-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "c3068bc64964f1ab4057185fead2fa97684d9a2e2f840e042f1eefce3f06d4c0"
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
