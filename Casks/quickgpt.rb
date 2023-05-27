cask "quickgpt" do
  version "1.4.2"
  sha256 "39ab214fca1f49fe7dbd9120ca51c7f52e0bd58c62e8c347c727c379247c76af"

  url "https://github.com/sindresorhus/quickgpt-meta/releases/download/v#{version}/QuickGPT.app.zip",
      verified: "github.com/sindresorhus/"
  name "QuickGPT"
  desc "GPT of quick"
  homepage "https://sindresorhus.com/quickgpt"

  livecheck do
    url "https://sindresorhus.com/quickgpt-meta/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "QuickGPT.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.QuickGPT",
    "~/Library/Containers/com.sindresorhus.QuickGPT",
  ]
end
