cask "spoti" do
  version "0.8.0"
  sha256 "d3c99b1fb99831e235ed95c5500a4cfd75ee9d0359381cad2374d871a698c931"

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
