cask "tuicommander" do
  version "0.9.8"

  url "https://github.com/sstraus/tuicommander/releases/download/v#{version}/TUICommander_aarch64.app.tar.gz"
  sha256 "b0b293e2db6312f1b2cf27d9c95f2f298679e688c049743e2364969bf3fee54e"

  name "TUICommander"
  desc "Desktop terminal orchestrator for running AI coding agents in parallel"
  homepage "https://github.com/sstraus/tuicommander"

  depends_on arch: :arm64

  app "TUICommander.app"
end
