class Ego < Formula
  desc "Provider-agnostic coding agent harness"
  homepage "https://github.com/sstraus/ego"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-aarch64-apple-darwin.tar.gz"
      sha256 "a8f817e2da1e8d43c7e92aa85c1263070485c485e89a0e6cb1fbcb4f31e8edb1"
    end
    on_intel do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-x86_64-apple-darwin.tar.gz"
      sha256 "24c42f7b5e64f8923b23d94b9673cef04800617cb1338f5a088c54bb9a2e896e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2146e12752be9663570929480087d4d2102003b64bdf4765ed2c9b5acfab9cb"
    end
    on_intel do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a20cd4d224ed54e4aa037851efceddba7bb4fdecfc953e793295bf509f269a9"
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
