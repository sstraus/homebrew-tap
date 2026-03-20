cask "mcp-mac-control" do
  version "1.0.0"

  url "https://github.com/sstraus/McpMacControl/releases/download/v#{version}/MCPMacControl.app.zip"
  sha256 "c3a63c3cacb723fd48fef1fd37894d622eaaa195a4953aef4c216574022f178f"

  name "MCPMacControl"
  desc "MCP server for AI-driven macOS control — screenshots, mouse, keyboard, windows, and shell"
  homepage "https://github.com/sstraus/McpMacControl"

  app "MCPMacControl.app"
end
