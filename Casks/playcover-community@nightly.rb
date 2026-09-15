cask "playcover-community@nightly" do
  version "1610"
  sha256 "d607b8dbe28bcec018b0f6e2cc6f6a751ad8290e2b84ef822d5fb5f762578fd9"

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
