cask "nextline" do
  version "0.9.0"
  sha256 "95504d2d340a47cce0731863eb6b46336a28d3662957d2142c31c9f96e5418dd"

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
  depends_on macos: ">= :sonoma"

  app "Nextline.app"

  uninstall quit: "app.inline.Inline"

  zap trash: [
    "~/Library/Application Support/Inline",
    "~/Library/Caches/app.inline.Inline",
    "~/Library/HTTPStorages/app.inline.Inline",
    "~/Library/Preferences/app.inline.Inline.plist",
  ]
end
