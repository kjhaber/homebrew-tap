class Pen < Formula
  desc "Run coding harnesses (Claude Code, etc.) inside isolated Docker containers"
  homepage "https://github.com/kjhaber/pen"
  url "https://github.com/kjhaber/pen/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "c404661561c4cbfee1a1ef1cccac8d8e6701547683f67f5f94bca4890faf9c80"
  license "MIT"

  def install
    inreplace "pen", "%%VERSION%%", version.to_s
    bin.install "pen"
    bash_completion.install "completions/pen.bash"
    zsh_completion.install "completions/_pen"
  end

  test do
    system "bash", "-n", bin/"pen"
  end
end
