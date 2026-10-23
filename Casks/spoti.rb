cask "spoti" do
  version "0.4.2"
  sha256 "750d77be6b0ae02ed5d78918b93a0d82b30e6d859fe3e87aa3ef1b8b195cc33c"

  url "https://github.com/hyperpuncher/spoti/releases/download/v#{version}/spoti-macos-arm64.tar.zst"
  name "spoti"
  desc "Lightweight native Spotify client"
  homepage "https://github.com/hyperpuncher/spoti"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Spoti.app"
end
