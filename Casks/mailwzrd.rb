cask "mailwzrd" do
  version "0.2.1"
  sha256 "e8786e164a2e84c4816a77521f282cb1377e2d45204983f32f55c4cf57667468"

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
