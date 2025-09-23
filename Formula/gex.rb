class Gex < Formula
  desc "gex hex editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "af3b09549aaa0335beac848d459590df44eb2e22d9118f5aaf4d49172b64b387"
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
