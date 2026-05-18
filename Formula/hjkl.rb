# Auto-generated. Source: https://github.com/kryptic-sh/hjkl
# Edits made directly to this file in the tap will be overwritten on the
# next tag — change `pkg/homebrew/hjkl.rb.in` in the upstream repo and
# let `.github/workflows/release.yml` rebuild on the next release.
class Hjkl < Formula
  desc "Vim-modal terminal editor: standalone TUI built on the hjkl engine"
  homepage "https://hjkl.kryptic.sh/"
  version "0.24.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.24.3/hjkl-v0.24.3-aarch64-apple-darwin.tar.gz"
      sha256 "bd8499a009acf726978ddba7b490327b4cf656637ae6712291a5ebe9dbc8c384"
    end
    on_intel do
      url "https://github.com/kryptic-sh/hjkl/releases/download/v0.24.3/hjkl-v0.24.3-x86_64-apple-darwin.tar.gz"
      sha256 "262845ce4867ad38b7e13cf8ddff6cc9b4eaf874509b372135ea4267b8c4e1c3"
    end
  end

  def install
    bin.install "hjkl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hjkl --version")
  end
end
