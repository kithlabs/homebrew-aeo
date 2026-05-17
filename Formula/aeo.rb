class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.2.0/aeo_darwin_arm64.tar.gz"
      sha256 "c36aca0b7d78efa6837fdd51257f7d7fea792c2a653ca2d4b19abd724d5c007c"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.2.0/aeo_darwin_amd64.tar.gz"
      sha256 "cfc04d702c3d82988a03a2dde9eec3dc8aedde21e57115181e07d876ea4676ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.2.0/aeo_linux_arm64.tar.gz"
      sha256 "8eacfecd70e5fc3a167ec86f955432fe81f7b55c3ec3eeff0dea23dd2e9254cb"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.2.0/aeo_linux_amd64.tar.gz"
      sha256 "abf466bb865c71eee1cb3f5cdf7d880859c85e49cc4e50919ecaf7821f95011e"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
