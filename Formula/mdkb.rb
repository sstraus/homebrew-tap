class Mdkb < Formula
  desc "Local knowledge base with hybrid search for AI coding assistants"
  homepage "https://github.com/sstraus/mdkb"
  version "3.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-arm64"
      sha256 "ea084c809a19c1ceded830cae0ac12d016ed165505a87569661bc8a4a07e9377"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-macos-x64"
      sha256 "52368499b4b89d939327696945d5eef1141e722a803c3211677a6859286291ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-arm64"
      sha256 "fa17d3833e4bfd6249bb86d8e61ccb7cd8c3479fe27bbeb2b41fe8c7292a65df"
    else
      url "https://github.com/sstraus/mdkb/releases/download/v#{version}/mdkb-linux-x64"
      sha256 "033559f25259231ff651bfa75e1482a1bd250ca3cf7396de7bc3de01085497c1"
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
