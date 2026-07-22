cask "nextline" do
  version "0.9.3"
  sha256 "81611acdb72232061e1b794504d4d1d4984bd78175a90ebc52178ea263a4ac28"

  url "https://zalex666.github.io/inline-autocomplete/Nextline-#{version}.dmg",
      verified: "zalex666.github.io/inline-autocomplete/"
  name "Nextline"
  desc "System-wide inline autocomplete powered by a local LLM"
  homepage "https://www.thenextline.app/"

  livecheck do
    url "https://zalex666.github.io/inline-autocomplete/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Nextline.app"

  uninstall quit: "app.inline.Inline"

  zap trash: [
    "~/Library/Application Support/Inline",
    "~/Library/Caches/app.inline.Inline",
    "~/Library/HTTPStorages/app.inline.Inline",
    "~/Library/Preferences/app.inline.Inline.plist",
  ]
end
