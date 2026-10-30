cask "biliup-app" do
  version "1.4.2"

  on_arm do
    sha256 "95717f6ba22cdccddd2b3601acb9d5b1f6a9f290af491cdd5f3d2a064e8bb285"

    url "https://github.com/biliup/biliup-app-new/releases/download/app-v#{version}/biliup-app_aarch64.app.tar.gz"
  end
  on_intel do
    sha256 "f44319499c2717d40e889a4b276b7c4f873a9fd6c4cfc3dd51eedad6c177a079"

    url "https://github.com/biliup/biliup-app-new/releases/download/app-v#{version}/biliup-app_#{version}_x64.dmg"
  end

  name "biliup-app"
  desc "Bilibili upload client with multi-part submission and post editing"
  homepage "https://github.com/biliup/biliup-app-new"

  livecheck do
    url "https://github.com/biliup/biliup-app-new.git"
    regex(/^app-v(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "biliup-app.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/biliup-app.app"]
  end

  zap trash: "~/Library/Application Support/biliup"
end
