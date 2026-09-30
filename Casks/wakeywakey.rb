cask "wakeywakey" do
  version "1.6.2"
  sha256 "ba852868d09fea1e0b8df99b86025e074a7a2ce6fcfb4421ace8639da765801f"

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
