class Ego < Formula
  desc "Provider-agnostic coding agent harness"
  homepage "https://github.com/sstraus/ego"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-aarch64-apple-darwin.tar.gz"
      sha256 "8b6b84e0f5fc8b9ae05733104ae902edbcb736bfdf7aff2ce377c2982d0f408b"
    end
    on_intel do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-x86_64-apple-darwin.tar.gz"
      sha256 "15143b93402c1f5999ffd136c49db796fe14d879e4f519b1ea3f719df0da77dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3577083c2b2c2866558d1c2b9fc2618b47afa92448764360ce9e147a394852c0"
    end
    on_intel do
      url "https://github.com/sstraus/ego/releases/download/v#{version}/ego-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0ae0e76781fe613956b0384529bfbc68486f3f0f649f9dc0840cb21ed541708"
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
