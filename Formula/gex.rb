class Gex < Formula
  desc "gex hex editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "5e3033d30839df885de607079d30bdc6c0631a11476251f9e026b1218ed0e5dd"
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
