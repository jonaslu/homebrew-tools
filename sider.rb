require "language/node"

class Sider < Formula
  desc "A cli for running and restoring multiple databases locally"
  homepage "https://github.com/jonaslu/sider"
  url "https://registry.npmjs.org/@jonaslu/sider/-/sider-1.2.1.tgz"
  sha256 "45cc14154b751ef3450a819e544477371e411eeb85de9316dac28bfc9658d99b"
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
