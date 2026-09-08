cask "playcover-community@nightly" do
  version "1603"
  sha256 "d7d37461f9b5391d1b43ee1d762febe25f86b340f0605b26f22806641af63667"

  url "https://nightly.link/PlayCover/PlayCover/workflows/2.nightly_release/develop/PlayCover_nightly_#{version}.dmg.zip"
  name "PlayCover Community (Nightly)"
  desc "Sideload iOS apps and games"
  homepage "https://github.com/PlayCover/PlayCover"

  livecheck do
    url "https://api.github.com/repos/PlayCover/PlayCover/actions/workflows/2.nightly_release.yml/runs?status=success&per_page=1"
    strategy :json do |json|
      json["workflow_runs"].first["run_number"].to_s
    end
  end

  conflicts_with cask: [  
    "playcover-community",
    "playcover-community@beta",
  ]
  depends_on arch: :arm64
  depends_on macos: :monterey

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
