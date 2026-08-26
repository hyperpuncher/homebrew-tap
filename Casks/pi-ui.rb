cask "pi-ui" do
  version "0.37.1"
  name "pi-ui"
  desc "Minimal GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "0bf9c402e7abb1f5d5565c5f8e440a05876681e8a56e25fed4304fe79a90bba2"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "1271d5a7a54492c3ec2aca34ea39c1a3a4846e6fb4d886150b7ced0ce44cef22"
  end

  app "pi-ui.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/pi-ui.app"],
      must_succeed: false
  end
end
