class MdkbExtractor < Formula
  desc "Extract text and metadata from documents using native macOS APIs"
  homepage "https://github.com/sstraus/mdkb-extractor"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64
  depends_on macos: :sequoia

  url "https://github.com/sstraus/mdkb-extractor/releases/download/v#{version}/mdkb-extractor"
  sha256 "50f07c8bc5cc820fd268241a4ea3d4285ac7ef6f1b9b8c0feff07e14628912b3"

  def install
    bin.install "mdkb-extractor"
  end

  test do
    assert_match "version", shell_output("#{bin}/mdkb-extractor version")
  end
end
