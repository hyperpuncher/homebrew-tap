cask "spoti" do
  version "0.5.3"
  sha256 "5215e19e1cc9461911fee8556d4b386f07fa0a281a34adaff0afd54ae2b6bbec"

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
