class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.1/aeo_darwin_arm64.tar.gz"
      sha256 "9817cb736bb1d921faffcf18e93b9adb2c6203d199d09c88b946cf40ae413d78"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.1/aeo_darwin_arm64.tar.gz"
      sha256 "9817cb736bb1d921faffcf18e93b9adb2c6203d199d09c88b946cf40ae413d78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.1/aeo_darwin_arm64.tar.gz"
      sha256 "9817cb736bb1d921faffcf18e93b9adb2c6203d199d09c88b946cf40ae413d78"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.1/aeo_darwin_arm64.tar.gz"
      sha256 "9817cb736bb1d921faffcf18e93b9adb2c6203d199d09c88b946cf40ae413d78"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
