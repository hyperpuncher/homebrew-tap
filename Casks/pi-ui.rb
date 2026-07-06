cask "pi-ui" do
  version "0.1.2"
  name "pi-ui"
  desc "Desktop GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "7b1a1dcb2b1dada6e2248a26aef343fcbd3207a7899b214b3fb96eef7a37a012"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "22061474817c7753e31d486776e8198430eb8365088092fb36331b1e74516c9a"
  end

  app "pi-ui.app"
end
