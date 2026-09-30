cask "wakeywakey" do
  version "1.6.1"
  sha256 "5037c1a6aa939eb227369eb610ab6f36c4dbdd03990d8d5f60c4e8f7ce2f4368"

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
