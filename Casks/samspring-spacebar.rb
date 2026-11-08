# frozen_string_literal: true

cask "samspring-spacebar" do
  version "2.4.2"
  sha256 "d221c9d7a693a2ee88537af2cda8d5e716b271d71bc2f010f6f75f2f33d135ab"

  url "https://github.com/SamSpring/SpaceBar-Public/releases/download/v#{version}/SpaceBar-#{version}-arm64.zip"
  name "SpaceBar"
  desc "Menu bar spacers, dividers, and a flexible gap"
  homepage "https://samspring.github.io/SpaceBar-Public/"

  livecheck do
    url "https://github.com/SamSpring/SpaceBar-Public"
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "SpaceBar.app"

  uninstall quit: "local.samuelaviv.MenuBarSpacers"
end
