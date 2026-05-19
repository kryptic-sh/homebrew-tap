cask "buffr" do
  version "0.13.5"
  sha256 "12a1707a8a470b73592eb0a363222ad0ffeb4b6e2028f5b1c7838e07d283c1e8"

  url "https://github.com/kryptic-sh/buffr/releases/download/v#{version}/buffr-#{version}-arm64.dmg"
  name "buffr"
  desc "Vim-flavored web browser built on CEF"
  homepage "https://kryptic.sh"

  depends_on macos: ">= :ventura", arch: :arm64

  app "Buffr.app"

  zap trash: [
    "~/.cache/buffr",
    "~/.config/buffr",
    "~/.local/share/buffr",
  ]
end
