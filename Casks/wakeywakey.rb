cask "wakeywakey" do
  version "1.0.2"
  sha256 "96184a32c23e25313da69b924d3415f5c283506529e260cc52b2c6986ff39665"

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
