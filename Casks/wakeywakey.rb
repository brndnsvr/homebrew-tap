cask "wakeywakey" do
  version "1.4.1"
  sha256 "f448d6b42c24489ffb24dfc1226facda0d7529ea4c4d5993975fea35decf6535"

  url "https://github.com/brndnsvr/WakeyWakey/releases/download/v#{version}/WakeyWakey-#{version}.dmg"
  name "WakeyWakey"
  desc "Menu bar app that keeps your Mac awake, with or without cursor movement"
  homepage "https://github.com/brndnsvr/WakeyWakey"

  depends_on macos: :sequoia

  app "WakeyWakey.app"
  binary "WakeyWakey.app/Contents/MacOS/wakey"

  zap trash: [
    "~/Library/Preferences/com.brndnsvr.WakeyWakey.plist",
  ]
end
