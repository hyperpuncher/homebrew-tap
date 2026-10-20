cask "spoti" do
  version "0.3.1"
  sha256 "becefdb85f6bb8a47f514a6f8c661128927448bdb734ca931c688041a2784059"

  url "https://github.com/hyperpuncher/spoti/releases/download/v#{version}/spoti-macos-arm64.tar.zst"
  name "spoti"
  desc "Lightweight native Spotify client"
  homepage "https://github.com/hyperpuncher/spoti"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Spoti.app"
end
