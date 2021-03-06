cask "gpodder" do
  version "3.10.17"
  sha256 "59530fd2d3e28fd4cb3a9a843c146e82c55c6e4cc0c4e83372259b66f088d5e6"

  # github.com/gpodder/gpodder/ was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast "https://github.com/gpodder/gpodder/releases.atom"
  name "gPodder"
  desc "Podcast client"
  homepage "https://gpodder.github.io/"

  app "gPodder.app"

  zap trash: "~/Library/Application Support/gPodder"
end
