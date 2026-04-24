cask "tuicommander" do
  version "1.0.7"

  url "https://github.com/sstraus/tuicommander/releases/download/v#{version}/TUICommander_aarch64.app.tar.gz"
  sha256 "93c8b3d9a0d530c2764272067929ed2fab84c8c94e0ef80397fb022df1aa0005"

  name "TUICommander"
  desc "Desktop terminal orchestrator for running AI coding agents in parallel"
  homepage "https://github.com/sstraus/tuicommander"

  depends_on arch: :arm64

  app "TUICommander.app"
end
