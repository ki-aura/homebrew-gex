class Gex < Formula
  desc "gex hex editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "8b987dd7e008565e457056b883c17f5751e6470ad6dcf10a86599ed950d91b62"
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
