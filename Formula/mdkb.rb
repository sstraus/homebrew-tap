class Mdkb < Formula
  desc "Local knowledge base with hybrid search for AI coding assistants"
  homepage "https://github.com/sstraus/mdkb"
  version "3.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-arm64"
      sha256 "27c2246801676a2af6421eefc6093b134c4868a386023f499b86817a2db98355"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-x64"
      sha256 "06d6206f9b680b6117af0b8b5e827a4f33fe32f34312de0b7faa94c69cbe50bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-arm64"
      sha256 "b843f743ce0e92f885316dfb504d4479519b9c2fef16b81d84c53005767b2458"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-x64"
      sha256 "839937806694170b36279d8ea9df2420c39820df16584baed26cc71c600c931e"
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
