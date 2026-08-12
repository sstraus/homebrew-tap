class Mdkb < Formula
  desc "Local knowledge base with hybrid search for AI coding assistants"
  homepage "https://github.com/sstraus/mdkb"
  version "3.7.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-arm64"
      sha256 "69675a9a091cd058ae6ed7e05a4d6ca6e76f59c66b895d65b050d09d87bc975e"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-x64"
      sha256 "91dbc585b623cb27181bba0333b15cc1daecc162fa70ca1b59640ada8ed1194f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-arm64"
      sha256 "59817f1687c9de1b5dfe22f87a28db057afedab82af896f7bfca6b49b32fc6f1"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-x64"
      sha256 "895508a267de70be8b2e61ebf23bc28cfa59f3e539520139bd74efc221671eaf"
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
