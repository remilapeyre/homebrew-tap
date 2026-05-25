cask "vikunja-desktop" do
  version "2.3.0"
  sha256 "4abb707229ad49e23f4aa675ef192c80f6aa9f28cc4a1ae79751ef03d84cfa8b"

  url "https://dl.vikunja.io/desktop/v#{version}/Vikunja%20Desktop-v#{version}.dmg"
  name "vikunja-desktop"
  desc "Vikunja is open-source task management"
  homepage "https://vikunja.io/"

  livecheck do
    url "https://github.com/go-vikunja/vikunja.git"
    regex(/(\d+\.\d+\.\d+)/)
  end

  depends_on :macos

  app "Vikunja Desktop.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
