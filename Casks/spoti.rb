cask "spoti" do
  version "0.6.0"
  sha256 "9f23fce23ce1cf59b584ccaee0ee67b56326d803de0965e1a2d2bb5a96bceb3f"

  url "https://github.com/hyperpuncher/spoti/releases/download/v#{version}/spoti-macos-arm64.tar.zst"
  name "spoti"
  desc "Lightweight native Spotify client"
  homepage "https://github.com/hyperpuncher/spoti"

  depends_on arch: :arm64
  depends_on macos: :tahoe
  depends_on formula: "curl"
  depends_on formula: "fontconfig"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_image"
  depends_on formula: "sdl3_ttf"

  app "spoti.app"
end
