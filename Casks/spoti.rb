cask "spoti" do
  version "0.4.1"
  sha256 "b4e8bc2f733a057f5a258aca204341602fd399c834e5c234fae6e6ca24794559"

  url "https://github.com/hyperpuncher/spoti/releases/download/v#{version}/spoti-macos-arm64.tar.zst"
  name "spoti"
  desc "Lightweight native Spotify client"
  homepage "https://github.com/hyperpuncher/spoti"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Spoti.app"
end
