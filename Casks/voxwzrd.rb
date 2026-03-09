cask "voxwzrd" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/brndnsvr/VoxWzrd/releases/download/v#{version}/VoxWzrd.zip"
  name "VoxWzrd"
  desc "Meeting assistant — record, transcribe, and summarize with on-device AI"
  homepage "https://github.com/brndnsvr/VoxWzrd"

  app "VoxWzrd.app"

  zap trash: [
    "~/Library/Application Support/VoxWzrd",
    "~/Library/Preferences/com.wzrdai.voxwzrd.plist",
  ]
end
