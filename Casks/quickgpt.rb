cask "quickgpt" do
  version "1.4.5"
  sha256 "9c01507f6d4f30449a548775c77f490d62e1d0b268e9c04aceb7f3e4829d6f01"

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
