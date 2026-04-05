class Pen < Formula
  desc "Run coding harnesses (Claude Code, etc.) inside isolated Docker containers"
  homepage "https://github.com/kjhaber/pen"
  url "https://github.com/kjhaber/pen/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "f0aad391d5affd3dc9d166e57467957123df2bf9e8e4403ffb9641644b663052"
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
