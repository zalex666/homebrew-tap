cask "nextline" do
  version "0.9.2"
  sha256 "dffe17614d6b6335a2f81b973c7c0245668a02e6323aa90591eeb454e0a47be7"

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
