class Pen < Formula
  desc "Run coding harnesses (Claude Code, etc.) inside isolated Docker containers"
  homepage "https://github.com/kjhaber/pen"
  url "https://github.com/kjhaber/pen/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "a68e195067a6f6c1ba81ddd264d49f1555788d0a86fe7c9cb874ee08036a6a56"
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
