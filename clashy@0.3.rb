class ClashyAT03 < Formula
  desc "Clash for Mac"
  homepage "https://github.com/damoncoo/clash"
  url "https://github.com/damoncoo/clash/releases/download/v0.3/mihomo-darwin-arm64.gz"
  version "0.3"
  
  def install
    bin.install "mihomo-darwin-arm64" => "clashy"
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
  