cask "mailwzrd" do
  version "0.2.17"
  sha256 "37045a63af97c52800de417ac377e51c9177ccd0f94cbd888f763522b936a616"

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
