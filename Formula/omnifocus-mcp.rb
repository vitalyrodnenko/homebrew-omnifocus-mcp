class OmnifocusMcp < Formula
  desc "Model Context Protocol server for OmniFocus"
  homepage "https://github.com/vitalyrodnenko/OmnifocusMCP"
  version "1.1.4"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.4/omnifocus-mcp-1.1.4-aarch64-apple-darwin.tar.gz"
    sha256 "ada6d7cc06b185d2f43c4ff1775f433c6cd013fa555ee77fe4437f41a97df0a7"
  end

  on_intel do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.4/omnifocus-mcp-1.1.4-x86_64-apple-darwin.tar.gz"
    sha256 "52e5fb2db7220452b5eef612ba9bd574eda0b4ba261a207e891ea625efb5ae06"
  end

  def install
    bin.install "omnifocus-mcp"
  end

  test do
    assert_match "omnifocus-mcp", shell_output("#{bin}/omnifocus-mcp --version")
  end
end
