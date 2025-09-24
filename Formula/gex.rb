class Gex < Formula
  desc "Tyler Hex Editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v1.3.2.tar.gz"
  sha256 "06bc9979340e072ee009ecad70fa3ce0485b803e2bd29d91e45420dd99887957"
  license "MIT"

  depends_on "ncurses"

  def install
    system "make", "release"
    bin.install "gex"
  end

  test do
    # Check basic execution
    system "#{bin}/gex", "--version"
  end
end
