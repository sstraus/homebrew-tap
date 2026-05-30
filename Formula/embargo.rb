class Embargo < Formula
  desc "Block dependency versions that are too fresh (supply-chain age gate)"
  homepage "https://github.com/sstraus/embargo"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/embargo/releases/download/v#{version}/embargo-macos-arm64"
      sha256 "c278a3174a5ef7a838828d66f35ddfb5bdb09a3d0ff754e42d8d2cdf0333f0bd"
    else
      url "https://github.com/sstraus/embargo/releases/download/v#{version}/embargo-macos-x64"
      sha256 "6d33fd05feecc97b1a1a585c536049ea7af8f114d90df4c6916611abb0812eac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/embargo/releases/download/v#{version}/embargo-linux-arm64"
      sha256 "2f22b8d37c82ea2a386afc2463cc62753f5954648b7bfdcb89b15f6f70620c35"
    else
      url "https://github.com/sstraus/embargo/releases/download/v#{version}/embargo-linux-x64"
      sha256 "14e102f1eb2ae4a7c5936aa46f387b9a6eb79cc9a02c2765daa5c35cef5b3171"
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
