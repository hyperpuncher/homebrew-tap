cask "spoti" do
  version "0.7.0"
  sha256 "80185ced6d064710ea950ccad5fe78b66fbb40005e52aa85071f52268ca889e7"

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
