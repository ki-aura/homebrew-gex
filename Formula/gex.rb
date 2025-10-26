class Gex < Formula
  desc "Tyler Hex Editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v2.2.4.tar.gz"
  sha256 "ce6e0fff0397e10023d6b9e33ed11063c0d2416ca29900dbcbdcb69e92fa1293"
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
