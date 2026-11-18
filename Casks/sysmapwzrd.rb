cask "sysmapwzrd" do
  version "26.3.11.1"
  sha256 "da604d003a74defe170381b8ea6ff291f67ac5a18e5c047fb30fd6edd6e732e5"

  url "https://github.com/brndnsvr/SysMapWzrd-releases/releases/download/v#{version}/SysMapWzrd-#{version}.zip"
  name "SysMapWzrd"
  desc "Editor for system and network diagrams"
  homepage "https://github.com/brndnsvr/SysMapWzrd-releases"

  depends_on macos: :tahoe

  app "SysMapWzrd.app"
end
