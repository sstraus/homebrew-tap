cask "tuicommander" do
  version "1.0.6"

  url "https://github.com/sstraus/tuicommander/releases/download/v#{version}/TUICommander_aarch64.app.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  name "TUICommander"
  desc "Desktop terminal orchestrator for running AI coding agents in parallel"
  homepage "https://github.com/sstraus/tuicommander"

  depends_on arch: :arm64

  app "TUICommander.app"
end
