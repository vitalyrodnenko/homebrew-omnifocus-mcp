class OmnifocusMcp < Formula
  desc "Model Context Protocol server for OmniFocus"
  homepage "https://github.com/vitalyrodnenko/OmnifocusMCP"
  version "1.1.6"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.6/omnifocus-mcp-1.1.6-aarch64-apple-darwin.tar.gz"
    sha256 "943a065366ce692531f49bebb63b66650fc10f45ce10dd238a9e57a211860038"
  end

  on_intel do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.6/omnifocus-mcp-1.1.6-x86_64-apple-darwin.tar.gz"
    sha256 "2b8e202eb99d4009a201b95514cb6cfce110a01dbfa0b05927ea128039f15c5e"
  end

  def install
    bin.install "omnifocus-mcp"
  end

  test do
    assert_match "omnifocus-mcp", shell_output("#{bin}/omnifocus-mcp --version")
  end
end
