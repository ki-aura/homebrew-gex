class Gex < Formula
  desc "gex hex editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "a9f26beec57cd1c6162b7183afdc379497d21a7d28dd253cefc9f17196080065"
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
