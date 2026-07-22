cask "nextline" do
  version "0.9.4"
  sha256 "871260c908d94035200312412bce4688608f1e45b6de2e67e184935ae50384dd"

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
