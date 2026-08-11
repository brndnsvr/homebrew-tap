cask "wakeywakey" do
  version "1.3.1"
  sha256 "718184307c798cfb7aa477a1c22590abf4a21ba5664fdcd99915e9ec6bdff05e"

  url "https://github.com/brndnsvr/WakeyWakey/releases/download/v#{version}/WakeyWakey-#{version}.dmg"
  name "WakeyWakey"
  desc "Menu bar app that keeps your Mac awake with subtle mouse movements"
  homepage "https://github.com/brndnsvr/WakeyWakey"

  depends_on macos: :sequoia

  app "WakeyWakey.app"
  binary "WakeyWakey.app/Contents/MacOS/wakey"

  zap trash: [
    "~/Library/Preferences/com.brndnsvr.WakeyWakey.plist",
  ]
end
