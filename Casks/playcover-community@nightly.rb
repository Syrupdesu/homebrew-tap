cask "playcover-community@nightly" do
  version "1477"
  sha256 "120bd31bc6155d812b04db4a45982acf28030ccf59199bc14dfae82f447397b2"

  url "https://nightly.link/PlayCover/PlayCover/workflows/2.nightly_release/develop/PlayCover_nightly_#{version}.dmg.zip",
      verified: "nightly.link/"
  name "PlayCover Community (Nightly)"
  desc "Sideload iOS apps and games on Apple Silicon"
  homepage "https://github.com/PlayCover/PlayCover"

  livecheck do
  url "https://api.github.com/repos/PlayCover/PlayCover/actions/workflows/2.nightly_release.yml/runs?status=success&per_page=1"
  strategy :json do |json|
    json["workflow_runs"].first["run_number"].to_s
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
