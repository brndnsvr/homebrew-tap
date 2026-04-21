cask "voxwzrd" do
  version "1.4.5"
  sha256 "3d7ec9ff6800e416815753367d2d5e47d5dba6cbeff2154f23ee1b1fc3811d6c"

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
