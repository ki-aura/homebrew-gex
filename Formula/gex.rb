class Gex < Formula
  desc "Tyler Hex Editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v2.2.6.tar.gz"
  sha256 "93a42d1863507abf3bacd2a9a10b70defc2308dd0e992c1849140c4e2e6ce2ef"
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
