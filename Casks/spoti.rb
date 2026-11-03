cask "spoti" do
  version "0.5.7"
  sha256 "82edcc96434d4901ddc053e7b7f94c91e16a26545af74cc5a1f17f2747ba378a"

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
