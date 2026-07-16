cask "pi-ui" do
  version "0.11.0"
  name "pi-ui"
  desc "Minimal GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "b3a23cdb988507bcd53f90ba1f870843b68c4cad5cb76c67d0ea3edd4d199184"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "6a94ad8f7449ede7511e50fc72648e3d8750355261c65cca925534c0922af7bf"
  end

  app "pi-ui.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/pi-ui.app"],
      must_succeed: false
  end
end
