class Gex < Formula
  desc "gex hex editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "b614239f081036d59ed43bc620aa39da86f1922285fc1c1590516719f3e3fde8"
  license "MIT"
  depends_on "ncurses"
  def install
    system "make", "release"
    bin.install "gex"   # replace "gex" with the actual executable name
  end
  test do
    system "#{bin}/gex"
  end
end
