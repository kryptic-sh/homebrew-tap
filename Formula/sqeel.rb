# Auto-generated. Source: https://github.com/kryptic-sh/sqeel
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/sqeel.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Sqeel < Formula
  desc "Modal SQL workbench for the terminal"
  homepage "https://sqeel.kryptic.sh/"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.6.0/sqeel-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "497164c582815e2e64e009d699f50dfa52974aa512d650057b0ea95320f46584"
    end
    on_intel do
      url "https://github.com/kryptic-sh/sqeel/releases/download/v0.6.0/sqeel-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "fdedc5b2828af0cc1ed0eaaa90992810414e8e8b7bf193c69274b1d320875561"
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
