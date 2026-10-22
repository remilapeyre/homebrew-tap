cask "vikunja-desktop" do
  version "2.7.1"
  sha256 "4c8a5057cc8eae07b45001d4dd4e96c094081adec04e26213d6e22926c43d506"

  url "https://dl.vikunja.io/desktop/v#{version}/Vikunja%20Desktop-v#{version}.dmg"
  name "vikunja-desktop"
  desc "Self-hosted task manager"
  homepage "https://vikunja.io/"

  livecheck do
    url "https://github.com/go-vikunja/vikunja.git"
    regex(/(\d+\.\d+\.\d+)/)
  end

  depends_on macos: :monterey

  app "Vikunja Desktop.app"

  zap trash: "~/Library/Preferences/io.vikunja.desktop.plist"
end
