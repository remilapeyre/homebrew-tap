cask "vikunja-desktop" do
  version "2.4.0"
  sha256 "0546c1ebcd391f12bc5deb5e044445e0118c91ab3727bcc77a001f5882fa0492"

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
