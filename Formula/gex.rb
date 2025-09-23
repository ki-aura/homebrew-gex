class Gex < Formula
  desc "gex hex editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ede3e1eba68a8d9c564a71acd4eabe5b72242706f1c5db6042546574b6723db4"
  license "MIT"
  depends_on "ncurses" => :build
  def install
    system "make", "release"
    bin.install "gex"   # replace "gex" with the actual executable name
  end
  test do
    system "#{bin}/gex"
  end
end
