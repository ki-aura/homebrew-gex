class Gex < Formula
  desc "Tyler Hex Editor"
  homepage "https://github.com/ki-aura/gex"
  url "https://github.com/ki-aura/gex/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "bca9b64296126bc291007dd1eae1b485d0dde148cba176edc0efb0c4839b2e18"
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
