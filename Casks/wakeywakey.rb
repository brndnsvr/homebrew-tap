cask "wakeywakey" do
  version "1.6.0"
  sha256 "1a23ef36bd80f6dccf3bb4a0f96ffa42793d0576bc49f84c383320a515070d79"

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
