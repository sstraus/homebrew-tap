class Mdkb < Formula
  desc "Local knowledge base with hybrid search for AI coding assistants"
  homepage "https://github.com/sstraus/mdkb"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v1.0.0/mdkb-macos-arm64"
      sha256 "aae0823d4f97da8475e56cd7ca451fea3dc72b3516153dd0d1d832cb2f43c03c"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v1.0.0/mdkb-macos-x64"
      sha256 "3e0363fad6dae05be900618da9abbf4be531949e88d7675fb8ba627fb901d9c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v1.0.0/mdkb-linux-arm64"
      sha256 "80e1fce9ce93eb26ae590f50ca57e3e7ac54a8be74d06fd02bab1aeb434baeb0"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v1.0.0/mdkb-linux-x64"
      sha256 "b25d86e9448d06878d9b21185d9f1028dbdc82f4db1cfa9f7ab28c3d671715fe"
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
