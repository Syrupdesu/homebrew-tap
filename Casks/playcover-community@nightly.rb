cask "playcover-community@nightly" do
  version "1652"
  sha256 "4e908f5f8343f466e49f85e693aec0e9c224e8a24fe8c059579e8a22a586a46a"

  url "https://nightly.link/PlayCover/PlayCover/workflows/2.nightly_release/develop/PlayCover_nightly_#{version}.dmg.zip"
  name "PlayCover Community (Nightly)"
  desc "Sideload iOS apps and games"
  homepage "https://github.com/PlayCover/PlayCover"

  livecheck do
    api_token = ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", nil)
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
