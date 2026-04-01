class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.1/aeo_darwin_arm64.tar.gz"
      sha256 "92366359911e511dfb87789d81a46c3e9b96b8b2ed6e39bfaf1c21a96b094be4"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.1/aeo_darwin_amd64.tar.gz"
      sha256 "20c879788da64db9e75a9de101a931793e808c48eb47896831709437831d6bb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.1/aeo_linux_arm64.tar.gz"
      sha256 "35c82c11ec274d136509718a7c4590bf5eacea6b2e2469a31eda74f6beb7df88"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.1/aeo_linux_amd64.tar.gz"
      sha256 "0ac079f89cfdde9f6c09cf1e9b1c02b379eb0bb837b007d49ec87aa082b46ad5"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
