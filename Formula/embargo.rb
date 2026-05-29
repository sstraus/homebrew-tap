class Embargo < Formula
  desc "Block dependency versions that are too fresh (supply-chain age gate)"
  homepage "https://github.com/sstraus/embargo"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/embargo/releases/download/v#{version}/embargo-macos-arm64"
      sha256 "03008005138e991facd632d4d6d996c87a7a14a1a68f4831d2e33718e1ce665c"
    else
      url "https://github.com/sstraus/embargo/releases/download/v#{version}/embargo-macos-x64"
      sha256 "33aad721350d88d3a34625d6a170847f07cccd79973334ebde250bc45311c246"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/embargo/releases/download/v#{version}/embargo-linux-arm64"
      sha256 "5174e1ce61b4ceeaa32a8d7c7e8e6c82d2740f7ac6220feba0eb681a334f6d54"
    else
      url "https://github.com/sstraus/embargo/releases/download/v#{version}/embargo-linux-x64"
      sha256 "3500cd09de6334c2f948a6c4a6b09a5589ac0168eed9bb7e8cf3b0d192907f5a"
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "embargo"
  end

  test do
    assert_match "embargo", shell_output("#{bin}/embargo --version")
  end
end
