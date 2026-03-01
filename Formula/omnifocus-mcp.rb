class OmnifocusMcp < Formula
  desc "Model Context Protocol server for OmniFocus"
  homepage "https://github.com/vitalyrodnenko/OmnifocusMCP"
  version "1.1.3"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.3/omnifocus-mcp-1.1.3-aarch64-apple-darwin.tar.gz"
    sha256 "9c4472fc468ac94a2d0231c5788f1bcbbbe4c62c13bd1b0e8a55e05139b4889e"
  end

  on_intel do
    url "https://github.com/vitalyrodnenko/OmnifocusMCP/releases/download/rust-v1.1.3/omnifocus-mcp-1.1.3-x86_64-apple-darwin.tar.gz"
    sha256 "09b94246cc06b6f358bc96286c48f00ffbf81d7735d750cb45e24d6190c8a685"
  end

  def install
    bin.install "omnifocus-mcp"
  end

  test do
    assert_match "omnifocus-mcp", shell_output("#{bin}/omnifocus-mcp --version")
  end
end
