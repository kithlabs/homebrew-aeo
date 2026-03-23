class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.4/aeo_darwin_arm64.tar.gz"
      sha256 "4cf27456429a99e17a597015dcc7ec9b76517b171bd911d0401bb58b47278293"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.4/aeo_darwin_amd64.tar.gz"
      sha256 "9b4adece5fa6b406a80086c743809007b6152adbaaf6e57ffec81e12ab38da86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.4/aeo_linux_arm64.tar.gz"
      sha256 "f6ca054aec1daa3264cb6b037f06377cd2dff46e5aa355d1914793fab048cd28"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.4/aeo_linux_amd64.tar.gz"
      sha256 "d687afbec6f0eaff555efe88790d439e3309cb51205b3be1f01425db21d70575"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
