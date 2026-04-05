class ClaudeDevcon < Formula
  desc "Run Claude Code inside an isolated Docker container"
  homepage "https://github.com/kjhaber/claude-devcon"
  url "https://github.com/kjhaber/claude-devcon/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "9fd9716a6fe23cab61e34f89a5c5b6331d553444897d7e65305ad3f282c5e556"
  license "MIT"

  def install
    bin.install "claude-devcon"
    bash_completion.install "completions/claude-devcon.bash"
    zsh_completion.install "completions/_claude-devcon"
  end

  test do
    system "bash", "-n", bin/"claude-devcon"
  end
end
