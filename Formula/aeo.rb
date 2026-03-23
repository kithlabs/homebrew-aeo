class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.0/aeo_darwin_arm64.tar.gz"
      sha256 "697bdb04cb8b3907e79d384136cc03c7182b56d9a0692defb07481e9974b27b2"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.0/aeo_darwin_amd64.tar.gz"
      sha256 "0902561db3f6c7f5f2ca63a6ad4b935049b9ab2c3d5d99b577fe9e9dc8ec89d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.0/aeo_linux_arm64.tar.gz"
      sha256 "87d83a64d7271a6ffff682c28782337e11221f9fd1f96f7faa819d977ddd13c5"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.0/aeo_linux_amd64.tar.gz"
      sha256 "91f7d07442f235cc4ac27c9b71938bd8f7791ae2efb9c9597dd2b2734a695bcf"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
