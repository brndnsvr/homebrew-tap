cask "wakeywakey" do
  version "1.0.0"
  sha256 "4c75b161be1c2fc83bfa638b4a3f8f23d78aeac52133f24d6684a49df3624e1c"

  url "https://github.com/brndnsvr/WakeyWakey/releases/download/v#{version}/WakeyWakey-1.0.dmg"
  name "WakeyWakey"
  desc "Menu bar app that keeps your Mac awake with subtle mouse movements"
  homepage "https://github.com/brndnsvr/WakeyWakey"

  depends_on macos: ">= :sequoia"

  app "WakeyWakey.app"

  zap trash: [
    "~/Library/Preferences/com.brndnsvr.WakeyWakey.plist",
  ]
end
