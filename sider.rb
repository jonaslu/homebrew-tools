require "language/node"

class Sider < Formula
  desc "A cli for running and restoring multiple databases locally"
  homepage "https://github.com/jonaslu/sider"
  url "https://registry.npmjs.org/@jonaslu/sider/-/sider-1.1.0.tgz"
  sha256 "6a13cb5d357a2e57d9dc58c0043fa7a737622076cea2b064504d2cc7b4e9626f"
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
