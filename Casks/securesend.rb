# One number lives in two places here, and the release workflow in
# devosurf/securesend-macos writes both: the version and the sha256 of the dmg it
# just notarized. Nothing in this file is edited by hand at release time.

cask "securesend" do
  version "0.2.0"
  sha256 "e0d6067d02e2f7bf0c56a4e66005be59dfa31b0994cf83e87a2dc0587486f49e"

  url "https://github.com/devosurf/securesend-macos/releases/download/v#{version}/SecureSend-#{version}.dmg"
  name "SecureSend"
  desc "Menu bar app for sharing secrets as one-time links"
  homepage "https://securesend.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "SecureSend.app"

  # A menu bar app with no Dock icon, so an upgrade would otherwise replace the
  # bundle underneath a running copy.
  uninstall quit: "dev.securesend.mac"

  # The log, which is the only thing the app writes outside its own bundle. It
  # holds app names and lengths and never a link, but it is still yours.
  zap trash: "~/Library/Logs/securesend.log"
end
