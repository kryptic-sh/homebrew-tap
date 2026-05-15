cask "buffr" do
  version "0.10.0"
  sha256 "5afe3f572b1dcb9390211cf9f24831d9f1b2c4357cd98f72105d5edcb8161a49"

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
