cask "tuicommander" do
  version "2.0.0"
  sha256 "d54d8c606e44167f45904ade16115256fbc952dd99a123a181dc068c1a4c36f0"

  url "https://github.com/sstraus/tuicommander/releases/download/v#{version}/TUICommander_aarch64.app.tar.gz"
  name "TUICommander"
  desc "Desktop terminal orchestrator for running AI coding agents in parallel"
  homepage "https://github.com/sstraus/tuicommander"

  depends_on arch: :arm64
  depends_on :macos

  app "TUICommander.app"
end
