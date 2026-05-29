cask "tuicommander" do
  version "1.2.8-nightly"

  url "https://github.com/sstraus/tuicommander/releases/download/v#{version}/TUICommander_aarch64.app.tar.gz"
  sha256 "24c4dfc4c6aca9b8e211754e9def2ce55e3dc6a99d837c1574cb3ac08d9ff742"

  name "TUICommander"
  desc "Desktop terminal orchestrator for running AI coding agents in parallel"
  homepage "https://github.com/sstraus/tuicommander"

  depends_on arch: :arm64

  app "TUICommander.app"
end
