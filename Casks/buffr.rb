cask "buffr" do
  version "0.6.1"
  sha256 "3ba6b5c9e6374db57d8934fb287edbcf68e6e21a86d4a8d087117853d26d51c5"

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
