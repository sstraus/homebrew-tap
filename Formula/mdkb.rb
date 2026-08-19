class Mdkb < Formula
  desc "Local knowledge base with hybrid search for AI coding assistants"
  homepage "https://github.com/sstraus/mdkb"
  version "3.7.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-arm64"
      sha256 "59e3ecaeae10815b28b653b44f3a6f6580ccc7f99701ace35fe2ae3c35ba8322"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-x64"
      sha256 "3997898b81e16bf348caba006e512493f6628117aae31602c7bedb2e05a418ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-arm64"
      sha256 "47e95ae466e62ba6ba2bdfb146e8f6c474fdf7ec0194d02ff817b21a26d089e5"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-x64"
      sha256 "0039402e7b3b65f0099bf87d47867869f83db16d92e6fb890f5e40aff5f11f5c"
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "mdkb"
  end

  test do
    assert_match "mdkb", shell_output("#{bin}/mdkb --version")
  end
end
