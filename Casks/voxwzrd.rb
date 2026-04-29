cask "voxwzrd" do
  version "1.4.8"
  sha256 "9f9280b2b28cd79ac1101f56a3217c1520296633205219458249dee6e529cea1"

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
