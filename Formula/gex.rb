class Gex < Formula
  desc "gex hex editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "8f1ababfefc4f430c21deb963878914cc70b1068928ed00a0bef1f71abef0ec0"
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
