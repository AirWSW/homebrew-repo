class V2rayRules < Formula
  version "202305102211"

  url "https://github.com/Loyalsoldier/v2ray-rules-dat.git"

  bottle :unneeded

  depends_on "v2ray"

  resource "apple-cn" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/apple-cn.txt"
    sha256 "794811db85323898c83eafadd948c5e2d69588647a2ac26271385197c090f27a" # apple-cn.txt
  end
  resource "direct-list" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/direct-list.txt"
    sha256 "27488c534d960482dca04aa485f39e252eda92dff3e87385e801249ab8acd30b" # direct-list.txt
  end
  resource "direct-tld-list" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/direct-tld-list.txt"
    sha256 "6586d9029edd42ca9d3e8a32d2d8c3aced37c9228615a5e693212b935a4d8efd" # direct-tld-list.txt
  end
  resource "geoip" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
    sha256 "7c909bac73ff74d10d32e0b882171f079e28e3321fe96804ca6e187ee8d618f7" # geoip.dat
  end
  resource "geosite" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"
    sha256 "7f3d64a5428f63db6a5f9fd1c9481366861b48475d48f48a076e8ce8092fc5aa" # geosite.dat
  end
  resource "gfw" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/gfw.txt"
    sha256 "3637e36512668c359629d34a06ef8cd8e5953a3e943989bbeb484ac28a221870" # gfw.txt
  end
  resource "google-cn" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/google-cn.txt"
    sha256 "b91a80237eb2e3e1e7416acda04f2b5920e85844d566dc6205e310f74e61567c" # google-cn.txt
  end
  resource "greatfire" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/greatfire.txt"
    sha256 "fa52d6e817e6012c3d24336f471df3d5dd431d05a971b1376eb16cfb888de82c" # greatfire.txt
  end
  resource "proxy-list" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/proxy-list.txt"
    sha256 "37ebcdecd09301d71f1429f2f0f4d0108ce8fd3ada28a6c369a3d0379fc12fc0" # proxy-list.txt
  end
  resource "proxy-tld-list" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/proxy-tld-list.txt"
    sha256 "bf10444bc8fa8581289ce64e58cfb8921b8134dad0b3b84c2b7e39a20e19014b" # proxy-tld-list.txt
  end
  resource "reject-list" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/reject-list.txt"
    sha256 "8d519fa4c15085b895a09fd6982043153c329447ffd12bcc004c331c2adf26f8" # reject-list.txt
  end
  resource "win-extra" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/win-extra.txt"
    sha256 "7e5ddf9bae65adff92ea0b4032e9edffe2953680b157ecbad6bc362373a6c27d" # win-extra.txt
  end
  resource "win-spy" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/win-spy.txt"
    sha256 "8e9030eeb451e7d51b85f70c0753a7d5f30cf2fb44ade9c1a2345d60106f9033" # win-spy.txt
  end
  resource "win-update" do
    url "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/win-update.txt"
    sha256 "f9e53c0dbd816ac5c20606f9cff5052c3de8818f34a264c1820ae305fd947896" # win-update.txt
  end

  def install
    resource("apple-cn").stage do
      pkgshare.install "apple-cn.txt"
    end
    resource("direct-list").stage do
      pkgshare.install "direct-list.txt"
    end
    resource("direct-tld-list").stage do
      pkgshare.install "direct-tld-list.txt"
    end
    resource("geoip").stage do
      pkgshare.install "geoip.dat"
    end
    resource("geosite").stage do
      pkgshare.install "geosite.dat"
    end
    resource("gfw").stage do
      pkgshare.install "gfw.txt"
    end
    resource("google-cn").stage do
      pkgshare.install "google-cn.txt"
    end
    resource("greatfire").stage do
      pkgshare.install "greatfire.txt"
    end
    resource("proxy-list").stage do
      pkgshare.install "proxy-list.txt"
    end
    resource("proxy-tld-list").stage do
      pkgshare.install "proxy-tld-list.txt"
    end
    resource("reject-list").stage do
      pkgshare.install "reject-list.txt"
    end
    resource("win-extra").stage do
      pkgshare.install "win-extra.txt"
    end
    resource("win-spy").stage do
      pkgshare.install "win-spy.txt"
    end
    resource("win-update").stage do
      pkgshare.install "win-update.txt"
    end
  end
end
