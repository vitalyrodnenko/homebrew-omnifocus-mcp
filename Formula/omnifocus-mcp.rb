class OmnifocusMcp < Formula
  desc "Model Context Protocol server for OmniFocus"
  homepage "https://github.com/vitalyrodnenko/OmnifocusMCP"
  version "1.1.5"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.5/omnifocus-mcp-1.1.5-aarch64-apple-darwin.tar.gz"
    sha256 "2996158e660593b17c3b8736c0ebc58b8be200e02f1fc3c6d2e403e17d0ec384"
  end

  on_intel do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.5/omnifocus-mcp-1.1.5-x86_64-apple-darwin.tar.gz"
    sha256 "1410d8d19ea780981bc04142c4ff97b95d31f2acc6683ff1fed7992119f654aa"
  end

  def install
    bin.install "omnifocus-mcp"
  end

  test do
    assert_match "omnifocus-mcp", shell_output("#{bin}/omnifocus-mcp --version")
  end
end
