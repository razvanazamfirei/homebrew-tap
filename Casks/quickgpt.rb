cask "quickgpt" do
  version "1.4.6"
  sha256 "5b8c3c8320b72c804ccda5ed72668b6aa34dac4b6db55ef04bdd0396b78b59ac"

  url "https://github.com/sindresorhus/quickgpt-meta/releases/download/v#{version}/QuickGPT.app.zip",
      verified: "github.com/sindresorhus/"
  name "QuickGPT"
  desc "GPT of quick"
  homepage "https://sindresorhus.com/quickgpt"

  livecheck do
    url "https://sindresorhus.com/quickgpt-meta/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :ventura"

  app "QuickGPT.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.QuickGPT",
    "~/Library/Containers/com.sindresorhus.QuickGPT",
  ]
end
