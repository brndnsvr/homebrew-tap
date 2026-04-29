cask "voxwzrd" do
  version "1.4.7"
  sha256 "717f2f5e01986d63ae94e0b14d3bc6022650f6c6071455a7099df917921eed86"

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
