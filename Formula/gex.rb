class Gex < Formula
  desc "gex hex editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "8a2a0b58e002e59312170c882eb35e577b74bd681502a7685d55e966dc5fc7ec"
  license "MIT"
  depends_on "ncurses" => :build if OS.mac?
  depends_on "ncurses" => :build if OS.linux?
  def install
    system "make", "release"
    bin.install "gex"   # replace "gex" with the actual executable name
  end
  test do
    system "#{bin}/gex"
  end
end
