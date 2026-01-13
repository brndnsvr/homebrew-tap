cask "wakeywakey" do
  version "1.1.0"
  sha256 "e8a24b209876354243384c3bda2069f56ccaad020a9025a2e635c657ad81c1a4"

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
