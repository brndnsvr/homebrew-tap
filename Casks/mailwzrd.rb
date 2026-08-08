cask "mailwzrd" do
  version "0.2.2"
  sha256 "ff620e5af02164dabd80d5e8d961726dd2faaae8ae421186f66ff49898a092cd"

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
