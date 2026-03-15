class OmnifocusMcp < Formula
  desc "Model Context Protocol server for OmniFocus"
  homepage "https://github.com/vitalyrodnenko/OmnifocusMCP"
  version "1.1.7"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.7/omnifocus-mcp-1.1.7-aarch64-apple-darwin.tar.gz"
    sha256 "4c622dc2458ad06b8de0dd2d0c21a47b060c9c7898dd9ed30f2e9cb9c63e70eb"
  end

  on_intel do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.7/omnifocus-mcp-1.1.7-x86_64-apple-darwin.tar.gz"
    sha256 "612b4a4d76acd6c55bcf038a72141b3cd41b62d3b73262abe00de14dfc921168"
  end

  def install
    bin.install "omnifocus-mcp"
  end

  test do
    assert_match "omnifocus-mcp", shell_output("#{bin}/omnifocus-mcp --version")
  end
end
