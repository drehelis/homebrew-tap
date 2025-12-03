cask "ilrail-bar" do
  version "2.11.0"
  sha256 "b3908fca9a5b7a1644f2ec435400b9e336fe3e2d8529351899c4d7834e43d18d"

  url "https://github.com/drehelis/ILrail-bar/releases/download/v#{version}/ILrail-bar.dmg",
      verified: "github.com/drehelis/ILrail-bar/"
  name "ILrail-bar"
  desc "A sleek and efficient macOS menu bar app for tracking Israel Railways train schedules in real-time"
  homepage "https://github.com/drehelis/ILrail-bar"

  app "ILrail-bar.app"

  zap trash: [
    "~/Library/Preferences/il.co.liar.ILrail-bar.plist"
  ]

  livecheck do
    url :url
    strategy :github_latest
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "/Applications/ILrail-bar.app"],
                   sudo: false
  end
end
