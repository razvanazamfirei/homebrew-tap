cask "upscayl" do
  version "2.8.1"
  sha256 "07268807de9ce54de6a0bbcbe102ad4d57c6e044dbc1a30ebc2628421a182472"

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/upscayl-#{version}-mac.dmg",
      verified: "github.com/upscayl/upscayl/"
  name "upscayl"
  desc "AI image upscaler"
  homepage "https://upscayl.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Upscayl.app"

  zap trash: [
    "~/Library/Application Support/Upscayl",
    "~/Library/Preferences/org.upscayl.app.plist",
    "~/Library/Saved Application State/org.upscayl.app.savedState",
  ]
end
