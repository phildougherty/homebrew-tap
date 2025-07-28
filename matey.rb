class Matey < Formula
  desc "Kubernetes-native MCP server and AI workflow orchestrator"
  homepage "https://github.com/phildougherty/m8e"
  url "https://github.com/phildougherty/m8e/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "4804ae692ea1e084bbb7fa9aaa00de1525a9ab5529768d358baff4ea8d479fb8"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/matey"
  end

  test do
    system "#{bin}/matey", "--version"
  end
end