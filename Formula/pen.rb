class Pen < Formula
  desc "Run coding harnesses (Claude Code, etc.) inside isolated Docker containers"
  homepage "https://github.com/kjhaber/pen"
  url "https://github.com/kjhaber/pen/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "8f647ea1956ad86a63e5e006ea8a5adb1029c5fb510ad69b9aa578f1d3dc7b66"
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
