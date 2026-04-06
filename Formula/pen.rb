class Pen < Formula
  desc "Run coding harnesses (Claude Code, etc.) inside isolated Docker containers"
  homepage "https://github.com/kjhaber/pen"
  url "https://github.com/kjhaber/pen/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "99ac83c17fe6904ce6eec85aaf6d8fa93aa30d06fadacf9228b17ddc0c267136"
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
