cask "tuicommander" do
  version "0.9.7"

  url "https://github.com/sstraus/tuicommander/releases/download/v#{version}/TUICommander_aarch64.app.tar.gz"
  sha256 "77a7a1e0f0ad2919a2d9680bb0b35df44f83a27157c4cbd1562af043f89f8235"

  name "TUICommander"
  desc "Desktop terminal orchestrator for running AI coding agents in parallel"
  homepage "https://github.com/sstraus/tuicommander"

  depends_on arch: :arm64

  app "TUICommander.app"
end
