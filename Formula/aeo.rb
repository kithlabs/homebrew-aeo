class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.7.0/aeo_darwin_arm64.tar.gz"
      sha256 "60fd89e463f0e52f2caa4c564522927ab34fde1e7b1cb059b1fce8f978c9e74f"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.7.0/aeo_darwin_amd64.tar.gz"
      sha256 "261e8ae10a8a2256f43467bd8299e845ca98ed3ba0b81391ee51d7014cb13187"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.7.0/aeo_linux_arm64.tar.gz"
      sha256 "fb40acaa4076091bd3229b6f0d2c8a37541ddec08ea2dc75bf15bd60b32472a5"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.7.0/aeo_linux_amd64.tar.gz"
      sha256 "8692a18684a0d16b4af8b35cb378e0a0d37e2ed03b16c0d3528a61eded6c70ec"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
