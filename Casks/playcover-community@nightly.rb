cask "playcover-community@nightly" do
  version "1643"
  sha256 "3daf31e850d7f4223c3f8373fe72bdf105d03ce7cd48eddee69178e22386101c"

  url "https://nightly.link/PlayCover/PlayCover/workflows/2.nightly_release/develop/PlayCover_nightly_#{version}.dmg.zip"
  name "PlayCover Community (Nightly)"
  desc "Sideload iOS apps and games"
  homepage "https://github.com/PlayCover/PlayCover"

  livecheck do
    api_token = ENV["HOMEBREW_GITHUB_API_TOKEN"]
    headers = ["Accept: application/vnd.github+json"]
    headers << "Authorization: Bearer #{api_token}" if api_token

    url "https://api.github.com/repos/PlayCover/PlayCover/actions/workflows/2.nightly_release.yml/runs?status=success&per_page=1",
        header: headers

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
