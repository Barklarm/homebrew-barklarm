cask "barklarm" do
  version "2.1.0"
  sha256 "50b213b65fc6ddc7571f72e4cbbaada181151a295383637049e3c4e5cd5994f4"

  url "https://github.com/Barklarm/barklarm-app/releases/download/v#{version}/barklarm-#{version}-arm64.dmg",
      verified: "github.com/Barklarm/barklarm-app"
  name "barklarm"
  desc "Display the status of your projects build & monitoring, and get notified if there is any issue"
  homepage "https://www.barklarm.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Barklarm.app"

  zap trash: [
    "~/Library/Application Support/barklarm",
    "~/Library/Caches/com.barklarm",
    "~/Library/Caches/com.electron.barklarm",
    "~/Library/Caches/com.electron.barklarm.ShipIt",
    "~/Library/HTTPStorages/com.electron.barklarm",
    "~/Library/Preferences/com.electron.barklarm.plist",
    "~/Library/Saved Application State/com.electron.barklarm.savedState",
  ]
end
