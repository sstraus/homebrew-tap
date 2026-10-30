class Ego < Formula
  desc "Provider-agnostic coding agent harness"
  homepage "https://github.com/sstraus/ego"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-aarch64-apple-darwin.tar.gz"
      sha256 "e968220b84b2d9eeb0a902ab243ded91c8941aced2afb649c026247a2703ecb4"
    end
    on_intel do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-x86_64-apple-darwin.tar.gz"
      sha256 "57f351f836de96de436e4511d9f34322dd847e90d65dbfcec900983df5752204"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "548cdbe37288b2ae8cf9c1fd6dfe616dcf6f75eb019e617204c917df5cb9ac92"
    end
    on_intel do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d139c13ffba5a6af5456edcefd911831d1ed22035eb09646e32905560b5ec7e7"
    end
  end

  def install
    bin.install "ego"
    bash_completion.install "completions/ego.bash" => "ego"
    zsh_completion.install "completions/_ego"
    fish_completion.install "completions/ego.fish"
    (pkgshare/"completions").install "completions/_ego.ps1", "completions/ego.elv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ego --version")
  end
end
