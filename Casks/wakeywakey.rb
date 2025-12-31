cask "wakeywakey" do
  version "1.0.1"
  sha256 "5671d926f8adf2298ca5c00b5c2552fb87b934f880be94e43fcdca784ec1249c"

  url "https://github.com/brndnsvr/WakeyWakey/releases/download/v#{version}/WakeyWakey-#{version}.dmg"
  name "WakeyWakey"
  desc "Menu bar app that keeps your Mac awake with subtle mouse movements"
  homepage "https://github.com/brndnsvr/WakeyWakey"

  depends_on macos: ">= :sequoia"

  app "WakeyWakey.app"

  zap trash: [
    "~/Library/Preferences/com.brndnsvr.WakeyWakey.plist",
  ]
end
