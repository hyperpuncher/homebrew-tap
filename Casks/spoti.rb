cask "spoti" do
  version "0.5.0"
  sha256 "a0247b0ae6cdca40ccf859ef88aa271fd96177de7a9be3bbfb9ee9d6d4b37f09"

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

  app "Spoti.app"
end
