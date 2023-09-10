class Clash < Formula
  desc "Clash for Mac"
  homepage "https://github.com/damoncoo/clash"
  url "https://github.com/damoncoo/clash/releases/download/v0.1/clash.tar.gz"
  version "0.1"
  sha256 "d991a58350148b23599d1491387609145be8caab1f9e51e7b694da490cf659c9"

  def install
   if Hardware::CPU.arm?
      bin.install "clash_darwin_arm64" => "clash"
    else
      bin.install "clash_darwin_amd64" => "clash"
    end
  end

  test do
    system "#{bin}/clash"
  end
end
