class Wxp < Formula
  desc "Convert speadsheet with content altive language"
  homepage "https://github.com/damoncoo/wxp"
  url "https://github.com/damoncoo/wxp/releases/download/0.1/wxp_0.1_darwin_amd64.tar.gz"
  version "0.1"
  sha256 "f252ebc2ad8cfc1d48dd2732caab01cfec621655d3735356059e56c0cd10dc34"

  def install
    bin.install "wxp"
  end

  test do
    system "#{bin}/wxp"
  end
end
