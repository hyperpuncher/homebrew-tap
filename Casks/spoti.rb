cask "spoti" do
  version "0.1.0"
  sha256 "9fa5d5087aab4bef93a7f78c5c79eb0a54b8eb15438444763c82020b51b60ffc"

  url "https://github.com/hyperpuncher/spoti/releases/download/v#{version}/spoti-macos-arm64.tar.zst"
  name "spoti"
  desc "Lightweight native Spotify client"
  homepage "https://github.com/hyperpuncher/spoti"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Spoti.app"
end
