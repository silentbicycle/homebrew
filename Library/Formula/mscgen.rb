class Mscgen < Formula
  desc "Message Sequence Chart generator"
  homepage "http://www.mcternan.me.uk/mscgen/"
  url "http://www.mcternan.me.uk/mscgen/software/mscgen-src-0.20.tar.gz"
  version "0.20"
  sha256 "3c3481ae0599e1c2d30b7ed54ab45249127533ab2f20e768a0ae58d8551ddc23"

  depends_on :x11
  depends_on 'pkg-config' => :build
  depends_on "gd" => :recommended
  depends_on :freetype => :optional

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
