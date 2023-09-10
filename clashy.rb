class Clashy < Formula
  desc "Clash for Mac"
  homepage "https://github.com/damoncoo/clash"
  url "https://github.com/damoncoo/clash/releases/download/v0.1/clash.tar.gz"
  version "0.1"
  sha256 "d991a58350148b23599d1491387609145be8caab1f9e51e7b694da490cf659c9"

  def install
    if Hardware::CPU.arm?
      bin.install "clash-darwin-arm64" => "clashy"
    else
      bin.install "clash-darwin-amd64" => "clashy"
    end
  end

  service do
    run opt_bin/"clashy"
    keep_alive true
    error_log_path var/"log/clash.log"
    log_path var/"log/clash.log"
  end

  test do
    system "#{bin}/clash"
  end
end
