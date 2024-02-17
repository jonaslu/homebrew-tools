require "language/node"

class Sider < Formula
  desc "A cli for running and restoring multiple databases locally"
  homepage "https://github.com/jonaslu/sider"
  url "https://registry.npmjs.org/@jonaslu/sider/-/sider-1.2.2.tgz"
  sha256 "7ac7707cb1cfc510d43783e46b1c84dba92ff17fd1f5b9b0d36b7e6986784e4b"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
