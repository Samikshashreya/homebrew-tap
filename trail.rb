class Trail < Formula
    desc "Your git for debugging - Track, share, and resolve coding issues"
    homepage "https://github.com/Samikshashreya/trail"
    url "https://github.com/Samikshashreya/trail/releases/download/v1.0.0/trail-1.0.0.tar.gz"
    sha256 "30cd8b5bd96046590d9c717fb0ea7505d02deef57ddd80ab0820a53e3d405d3f"
    license "MIT"
  
    depends_on "node"
  
    def install
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      system "#{bin}/trail", "--version"
    end
  end