cask "spoti" do
  version "0.5.5"
  sha256 "5cd83b998ec884352504f58004af7a5e51bf0a5b7898b13b4072c7f4006aab45"

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
