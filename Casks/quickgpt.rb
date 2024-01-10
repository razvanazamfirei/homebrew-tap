cask "quickgpt" do
  version "1.4.10"
  sha256 "fa18d238338d19743e1754b3f2757ca106b8ca4a256ec4d25423300776548cc0"

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
