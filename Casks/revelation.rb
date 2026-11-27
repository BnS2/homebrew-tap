cask "revelation" do
  version "0.4.2"
  sha256 "40d3ee497ee33b43bb6438bb826eff9f2a07f16fbdc523ee0037566b028bbb84"

  url "https://github.com/BnS2/revelation-presenter/releases/download/v#{version}/Revelation_#{version}_aarch64.dmg"
  name "Revelation"
  name "Revelation Presenter"
  desc "Church presentation app for songs, Bible readings and slides"
  homepage "https://github.com/BnS2/revelation-presenter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Revelation.app"

  zap trash: [
    "~/Library/Application Support/com.bns.revelation",
    "~/Library/Caches/com.bns.revelation",
    "~/Library/Preferences/com.bns.revelation.plist",
    "~/Library/WebKit/com.bns.revelation",
  ]

  caveats <<~EOS
    Revelation is not signed with an Apple Developer ID. The first time you open it,
    macOS says it can't verify the developer: click Done, then go to
    System Settings > Privacy & Security and click Open Anyway next to Revelation.
  EOS
end
