cask "mailwzrd" do
  version "0.2.0"
  sha256 "a08415e47002b1cb63e99b910bdb52832cacbdfaa0bde6140b0f83079f1e99b3"

  url "https://github.com/brndnsvr/MailWzrd-releases/releases/download/v#{version}/MailWzrd-v#{version}.dmg"
  name "MailWzrd"
  desc "Privacy-first AI email triage for Apple Mail"
  homepage "https://github.com/brndnsvr/MailWzrd-releases"

  depends_on macos: :sequoia

  app "MailWzrd.app"

  zap trash: [
    "~/Library/Containers/com.brndnsvr.mailwzrd",
    "~/Library/Group Containers/CMFBMNG959.com.brndnsvr.mailwzrd",
    "~/Library/Preferences/com.brndnsvr.mailwzrd.plist",
  ]
end
