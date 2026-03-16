cask "playcover-community@nightly" do
  version "1421"
  sha256 :no_check

  url "https://nightly.link/PlayCover/PlayCover/workflows/2.nightly_release/develop/PlayCover_nightly_#{version}.dmg.zip",
      verified: "nightly.link/"
  name "PlayCover Community (Nightly)"
  desc "Sideload iOS apps and games on Apple Silicon"
  homepage "https://github.com/PlayCover/PlayCover"

  conflicts_with cask: [
    "playcover-community",
    "playcover-community@beta",
  ]
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "PlayCover.app"

  zap trash: [
    "~/Library/Application Support/io.playcover.PlayCover",
    "~/Library/Caches/io.playcover.PlayCover",
    "~/Library/Containers/io.playcover.PlayCover",
    "~/Library/Frameworks/PlayTools.framework",
    "~/Library/Preferences/io.playcover.PlayCover.plist",
    "~/Library/Saved Application State/io.playcover.PlayCover.savedState",
  ]
end
