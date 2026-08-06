cask "buffr" do
  version "0.14.10"
  sha256 "a447cb6ad6b11263756cbf58ae880a19df7e52aa82b92d72ac1a1029e9f84f69"

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
