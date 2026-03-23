class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.1/aeo_darwin_arm64.tar.gz"
      sha256 "45c02051887c2591fde100b52c9d81c3807eb6ea100890e560f6c1351af7683e"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.1/aeo_darwin_amd64.tar.gz"
      sha256 "530fac2280eae5fcaf0b5052ffc67a1f4ffd15d8793b61d30cadfe0772197ea3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.1/aeo_linux_arm64.tar.gz"
      sha256 "4637092dd72aff90bfd0bca71199a2d6bc244e4e6143cc601a8348a2a2f5f52b"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.1/aeo_linux_amd64.tar.gz"
      sha256 "4a85521c85b232a68651bc677cafef472aa938ae377fab22370cd384399a8771"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
