cask "playcover-community@nightly" do
  version "1463"
  sha256 "120bd31bc6155d812b04db4a45982acf28030ccf59199bc14dfae82f447397b2"

  url "https://nightly.link/PlayCover/PlayCover/workflows/2.nightly_release/develop/PlayCover_nightly_#{version}.dmg.zip",
      verified: "nightly.link/"
  name "PlayCover Community (Nightly)"
  desc "Sideload iOS apps and games on Apple Silicon"
  homepage "https://github.com/PlayCover/PlayCover"

  livecheck do
    url "https://nightly.link/PlayCover/PlayCover/workflows/2.nightly_release/develop/PlayCover_nightly_#{version}.dmg"
    regex(/PlayCover_nightly_(\d+)\.dmg/i)
    strategy :page_match
  end

  conflicts_with cask: [
    "playcover-community",
    "playcover-community@beta",
  ]
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "PlayCover.app"

  zap trash: [
       "~/Library/Containers/io.playcover.PlayCover",
       "~/Library/HTTPStorages/io.playcover.PlayCover",
       "~/Library/Preferences/io.playcover.PlayCover.plist",
  ]
end
