class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.6.1/aeo_darwin_arm64.tar.gz"
      sha256 "1425183fff05f6c0d5dc353129470d0c4c214fab947042ae6ac0fb2decb1c6f2"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.6.1/aeo_darwin_amd64.tar.gz"
      sha256 "9a213fba6fb3185bdd773b6a0a08ddf771125a1c71c86b3cb9e7d81ff4aabd33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.6.1/aeo_linux_arm64.tar.gz"
      sha256 "aa7da8c9466e18578cc38b1701316f7f728cb15be7ed0d7b7f14ca7163de86b2"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.6.1/aeo_linux_amd64.tar.gz"
      sha256 "25980ea155323984a044f41e21a3fa99c0bc2c5bb5a153b9dc4459b643d15d26"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
