cask "pi-ui" do
  version "0.18.0"
  name "pi-ui"
  desc "Minimal GUI for pi"
  homepage "https://github.com/hyperpuncher/pi-ui"

  on_arm do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-arm64.zip"
    sha256 "28d5fe37358f83c9ab0c24fed42277eb8e9968a1dd9cc67924e1a644a07562d5"
  end

  on_intel do
    url "https://github.com/hyperpuncher/pi-ui/releases/download/v#{version}/pi-ui-darwin-x64.zip"
    sha256 "e5439951c8c6210deb1eff6fcd1b500f8ba68dfe66d935f05d03e4a025aa408d"
  end

  app "pi-ui.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/pi-ui.app"],
      must_succeed: false
  end
end
