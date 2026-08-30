cask "meetwzrd" do
  version "1.4.9"
  sha256 "de473e899d6639c1c6ef4a9533d536218e54b4f7a8779da5644fb1fd0aa11638"

  url "https://github.com/brndnsvr/VoxWzrd-releases/releases/download/v#{version}/MeetWzrd-v#{version}.dmg"
  name "MeetWzrd"
  desc "Meeting assistant — record, transcribe, and summarize with on-device AI"
  homepage "https://github.com/brndnsvr/MeetWzrd"

  depends_on macos: :sonoma

  app "MeetWzrd.app"

  zap trash: [
    "~/Library/Application Support/VoxWzrd",
    "~/Library/Preferences/com.wzrdai.voxwzrd.plist",
  ]
end
