cask "mac-duo" do
  version :latest
  sha256 :no_check

  url "https://github.com/sumimakito/Mac-Duo/releases/download/dev/Mac-Duo-dev.dmg"
  name "Mac Duo"
  desc "Adds the iPhone Duo lid-closing effect to MacBooks"
  homepage "https://github.com/sumimakito/Mac-Duo"

  depends_on macos: ">= :sonoma"

  app "Mac Duo.app"

  caveats <<~EOS
    Mac Duo needs Screen Recording permission to render the effect, and a
    MacBook with a compatible lid angle sensor.
  EOS
end