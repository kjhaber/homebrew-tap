class Pen < Formula
  desc "Run coding harnesses (Claude Code, etc.) inside isolated Docker containers"
  homepage "https://github.com/kjhaber/pen"
  url "https://github.com/kjhaber/pen/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "76333b17de8b526dedeedcaf6fefcfe241432637797b9171be026f53c4fcbfb7"
  license "MIT"

  def install
    bin.install "pen"
    bash_completion.install "completions/pen.bash"
    zsh_completion.install "completions/_pen"
  end

  test do
    system "bash", "-n", bin/"pen"
  end
end
