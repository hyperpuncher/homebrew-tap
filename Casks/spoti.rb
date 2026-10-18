cask "spoti" do
  version "0.2.0"
  sha256 "ae77bca99a6fd3e067b7aee7c8bf1877b8f5d3617615f75e5a28760480b568fb"

  url "https://github.com/hyperpuncher/spoti/releases/download/v#{version}/spoti-macos-arm64.tar.zst"
  name "spoti"
  desc "Lightweight native Spotify client"
  homepage "https://github.com/hyperpuncher/spoti"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Spoti.app"
end
