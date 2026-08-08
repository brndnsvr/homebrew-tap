cask "mailwzrd" do
  version "0.2.16"
  sha256 "9caae343d0fa172550066e87b56804dc3646977fa338f9794ae40f0adc6deb6a"

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
