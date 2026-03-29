class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.6.0/aeo_darwin_arm64.tar.gz"
      sha256 "cfa6e1f17681fccb9906313200e58e245b19dad9cb26d447fad92a4cee1e1783"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.6.0/aeo_darwin_amd64.tar.gz"
      sha256 "4e2af1328ecd5dc76eb9da93a11a93f9ffeb6126e7ebfa349cd69faabcf26c4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.6.0/aeo_linux_arm64.tar.gz"
      sha256 "afc66efc73d3331e2ace009df6ae3d5a5bb0d384c876d535bba012417c78c671"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.6.0/aeo_linux_amd64.tar.gz"
      sha256 "12ae583a30fb4ba33d1f3a26e6bf11cbe575e009e13e170e55f7f39a5d2568d7"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
