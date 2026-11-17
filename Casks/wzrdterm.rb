cask "wzrdterm" do
  version "26.4.11.3"
  sha256 "eb6707c304f76cda69a088949181ce801d92c4530290b58fceef3443aee4872b"

  url "https://github.com/brndnsvr/WzrdTerm-releases/releases/download/v#{version}/WzrdTerm-#{version}.dmg"
  name "WzrdTerm"
  desc "Project-based terminal emulator"
  homepage "https://github.com/brndnsvr/WzrdTerm-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "WzrdTerm.app"
  binary "#{appdir}/WzrdTerm.app/Contents/Resources/bin/wzrdterm"

  zap trash: [
    "~/.config/wzrdterm",
    "~/Library/Application Support/WzrdTerm",
    "~/Library/Preferences/com.wzrdai.wzrdterm.plist",
  ]
end
