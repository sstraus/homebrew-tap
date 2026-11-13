cask "mcp-mac-control" do
  version "1.0.0"
  sha256 "c3a63c3cacb723fd48fef1fd37894d622eaaa195a4953aef4c216574022f178f"

  url "https://github.com/sstraus/McpMacControl/releases/download/v#{version}/MCPMacControl.app.zip"
  name "MCPMacControl"
  desc "MCP server for AI-driven desktop control: screenshots, input, windows and shell"
  homepage "https://github.com/sstraus/McpMacControl"

  depends_on :macos

  app "MCPMacControl.app"
end
