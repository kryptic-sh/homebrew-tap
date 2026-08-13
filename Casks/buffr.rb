cask "buffr" do
  version "0.14.13"
  sha256 "be0cf5f93c3ee38532b2e90630caa4b8b2ac21267a0bd2be7a5a4f0795bb1808"

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
