class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.9.0/aeo_darwin_arm64.tar.gz"
      sha256 "6dbf3ded3aa9cee3cf05ff1a7d3d544d707a3add7495e6b832e73c7df2bc9ff9"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.9.0/aeo_darwin_amd64.tar.gz"
      sha256 "bb86b926286b331f9349ce7f7b93d1e8ceeb050fb82c6b7d5e17ea5ff63864ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.9.0/aeo_linux_arm64.tar.gz"
      sha256 "3a860913e49e785325f0532e4e5ea51b715458e88e191891948f813400d8a7d4"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.9.0/aeo_linux_amd64.tar.gz"
      sha256 "ffb8c1bf4af60589e66ef2212ef0ee5e386767eabd1242bdfff2f35dd974f2b1"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
