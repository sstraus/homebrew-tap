class Mdkb < Formula
  desc "Local knowledge base with hybrid search for AI coding assistants"
  homepage "https://github.com/sstraus/mdkb"
  version "3.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-arm64"
      sha256 "d333474e0db7750c58bc86130758f29b715879fba96a06edac9d296fcf1781fa"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-x64"
      sha256 "ab5bc22a08e5d4c50220a3a97cea89a40cba799731c79100c6fe0079f7d097e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-arm64"
      sha256 "0319363c0e24b308b1c32494a4b80901f5d52d884f82619e2c4726e6cf327595"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-x64"
      sha256 "077767bfc6a92a791feb356f57e8323ebe715e4f947d7e6eff44dd2d808e78a1"
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
