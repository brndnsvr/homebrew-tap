cask "voxwzrd" do
  version "1.4.2"
  sha256 "3e97de32aa44be6c301b5ce02414e39f797ffce4b4f78f977aaecdac1c98e370"

  url "https://github.com/brndnsvr/VoxWzrd/releases/download/v#{version}/VoxWzrd-v#{version}.dmg"
  name "VoxWzrd"
  desc "Meeting assistant — record, transcribe, and summarize with on-device AI"
  homepage "https://github.com/brndnsvr/VoxWzrd"

  app "VoxWzrd.app"

  zap trash: [
    "~/Library/Application Support/VoxWzrd",
    "~/Library/Preferences/com.wzrdai.voxwzrd.plist",
  ]
end
