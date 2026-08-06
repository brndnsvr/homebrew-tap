cask "wzrdcheck" do
  version "1.0.0"
  sha256 "3253796a01634aef7d828e1b4a9cd0e9cad357d0a9b51027a2e3ac06941c67e5"

  url "https://github.com/brndnsvr/WzrdCheck/releases/download/v#{version}/WzrdCheck-#{version}.dmg"
  name "WzrdCheck"
  desc "Menu bar host monitor with a patient, decaying ICMP probe ladder"
  homepage "https://github.com/brndnsvr/WzrdCheck"

  depends_on macos: :tahoe

  app "WzrdCheck.app"

  zap trash: [
    "~/Library/Containers/com.brndnsvr.WzrdCheck",
  ]
end
