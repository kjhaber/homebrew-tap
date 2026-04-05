class ClaudeDevcon < Formula
  desc "Run Claude Code inside an isolated Docker container"
  homepage "https://github.com/kjhaber/claude-devcon"
  url "https://github.com/kjhaber/claude-devcon/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
