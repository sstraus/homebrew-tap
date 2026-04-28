class Mdkb < Formula
  desc "Local knowledge base with hybrid search for AI coding assistants"
  homepage "https://github.com/sstraus/mdkb"
  version "3.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}#{version}/mdkb-macos-arm64"
      sha256 "78a22fa89b4fe1952275c5a74ec543c576ea538b32c9474360602d232b4b0349"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}#{version}/mdkb-macos-x64"
      sha256 "50953e0b6515e9bd496756357d8d698e9cc1218b78c891df63dc7e5c0a87af84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}#{version}/mdkb-linux-arm64"
      sha256 "a2882a767a9f945d78167f38ecab63f7a0f91a83e90b6bfc81eede6a955764a3"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}#{version}/mdkb-linux-x64"
      sha256 "b2190f5ea91217b5e83388152a4bb3646fa8d18f7a97e71660c5fd806a2e5228"
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
