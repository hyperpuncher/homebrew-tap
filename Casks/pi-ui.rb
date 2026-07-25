cask "pi-ui" do
  version "0.19.4"
  name "pi-ui"
  desc "Minimal GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "803e5267780a5455c67b8bf53f9dd91a54a27490cdb0d6b3d2de6df2881ebfa4"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "a99ef4b9535f6894ccb2f15b9fc3e088ddc64c3a9148511c6c355945e5d8ca44"
  end

  app "pi-ui.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/pi-ui.app"],
      must_succeed: false
  end
end
