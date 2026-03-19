class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.3.0/aeo_darwin_arm64.tar.gz"
      sha256 "d47f041fd2888489af2e6691d690c2bfdb1fe1095b32516a46aadae5bd99b66e"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.3.0/aeo_darwin_amd64.tar.gz"
      sha256 "8596d7feec4f87e035f215eef7e4d8f855f0c07b33253c53d35a61c34a4b8a9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.3.0/aeo_linux_arm64.tar.gz"
      sha256 "591651d53ea625cb9c636f47b2d331f774ecdfee1fc00a5a17146f2a418cf332"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.3.0/aeo_linux_amd64.tar.gz"
      sha256 "35ef87ff24df94f1f204260112c89a8388ffe8753d5b178ca6d98c63c60460d9"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
