cask "spoti" do
  version "0.3.0"
  sha256 "826d02d395228f5ad4f204fcc79096256852fc11e04b116fc700cc942b255e1b"

  url "https://github.com/hyperpuncher/spoti/releases/download/v#{version}/spoti-macos-arm64.tar.zst"
  name "spoti"
  desc "Lightweight native Spotify client"
  homepage "https://github.com/hyperpuncher/spoti"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Spoti.app"
end
