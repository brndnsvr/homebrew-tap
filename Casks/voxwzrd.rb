cask "voxwzrd" do
  version "1.4.6"
  sha256 "af2f0fcc5beba27305c09bf8907e4dc6a1074fc126418ab5ed278b4b3a6322ad"

  url "https://github.com/brndnsvr/VoxWzrd-releases/releases/download/v#{version}/VoxWzrd-v#{version}.dmg"
  name "VoxWzrd"
  desc "Meeting assistant — record, transcribe, and summarize with on-device AI"
  homepage "https://github.com/brndnsvr/VoxWzrd"

  app "VoxWzrd.app"

  zap trash: [
    "~/Library/Application Support/VoxWzrd",
    "~/Library/Preferences/com.wzrdai.voxwzrd.plist",
  ]
end
