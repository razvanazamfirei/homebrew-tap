cask "quickgpt" do
  version "1.5.1"
  sha256 "6df83a0df0b6a0b0686ba6b9700057b31b2abd86ca807720faef9d7670a650ca"

  url "https://github.com/sindresorhus/quickgpt-meta/releases/download/v#{version}/QuickGPT.zip",
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
