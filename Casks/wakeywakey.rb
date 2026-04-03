cask "wakeywakey" do
  version "1.2.0"
  sha256 "14e03dd443dbb89d0d0bdbb2507f8cf50ea2eb744693351e64a21f87679ab7e0"

  url "https://github.com/brndnsvr/WakeyWakey/releases/download/v#{version}/WakeyWakey-#{version}.dmg"
  name "WakeyWakey"
  desc "Menu bar app that keeps your Mac awake with subtle mouse movements"
  homepage "https://github.com/brndnsvr/WakeyWakey"

  depends_on macos: ">= :sequoia"

  app "WakeyWakey.app"
  binary "WakeyWakey.app/Contents/MacOS/wakey"

  zap trash: [
    "~/Library/Preferences/com.brndnsvr.WakeyWakey.plist",
  ]
end
