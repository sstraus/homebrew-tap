cask "tuicommander" do
  version "1.0.4"

  url "https://github.com/sstraus/tuicommander/releases/download/v#{version}/TUICommander_aarch64.app.tar.gz"
  sha256 "ed7ba9b045d9237eae83bfd61ce9b7c945e881680487af4523ed22e5b957ca12"

  name "TUICommander"
  desc "Desktop terminal orchestrator for running AI coding agents in parallel"
  homepage "https://github.com/sstraus/tuicommander"

  depends_on arch: :arm64

  app "TUICommander.app"
end
