class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.2/aeo_darwin_arm64.tar.gz"
      sha256 "dca8af8e5f6865257744bbc566f9f4bade7e334b8ead1a943035f48999b3d3cb"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.2/aeo_darwin_amd64.tar.gz"
      sha256 "8151522b5ec88ffd617991aff4fac24bda14fbe7c540f599fb626d0120fee6fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.2/aeo_linux_arm64.tar.gz"
      sha256 "73594f2ecf529a23227e2a29741c7ee3e2492c13daf4cf0dc0fbc408a2b69654"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.2/aeo_linux_amd64.tar.gz"
      sha256 "ed6d4da309365fbe2c9f53966c30e3cb6813e5777794cb1076cca700fb07f523"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
