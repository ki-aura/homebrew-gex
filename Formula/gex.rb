class Gex < Formula
  desc "Tyler Hex Editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v2.2.3.tar.gz"
  sha256 "8642a16c511ea8c83aea035d0dcefa690690d308dbe91d7319955e57ec4afe11"
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
