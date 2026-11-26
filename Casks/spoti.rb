cask "spoti" do
  version "0.9.0"
  sha256 "b20c55b88679a9a3dadb4fbc8ffd31dd63aaf8d43bc630de80dd0e9bcfd8dc9a"

  url "https://github.com/hyperpuncher/spoti/releases/download/v#{version}/spoti-macos-arm64.tar.zst"
  name "spoti"
  desc "Lightweight native Spotify client"
  homepage "https://github.com/hyperpuncher/spoti"

  depends_on arch: :arm64
  depends_on macos: :tahoe
  depends_on formula: "curl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_image"

  app "spoti.app"
end
