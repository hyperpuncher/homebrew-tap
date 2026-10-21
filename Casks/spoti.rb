cask "spoti" do
  version "0.4.0"
  sha256 "4bbb3edb04643310e8a7490d95221f41f29345e31177ff354ec4e22681afe5d6"

  url "https://github.com/hyperpuncher/spoti/releases/download/v#{version}/spoti-macos-arm64.tar.zst"
  name "spoti"
  desc "Lightweight native Spotify client"
  homepage "https://github.com/hyperpuncher/spoti"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Spoti.app"
end
