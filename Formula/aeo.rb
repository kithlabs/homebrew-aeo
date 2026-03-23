class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_darwin_arm64.tar.gz"
      sha256 "7f5aa3901acf1ddbc215907e4fe1386bedb6d42da4bfbea0235f86306963a70d"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_darwin_amd64.tar.gz"
      sha256 "ea4528eacf4cc59952504e599edf973814eda2d8d1f0f716eb73761dcb896327"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_linux_arm64.tar.gz"
      sha256 "09f2cf16e24ebe25c850ce54a5397d67051b3e4d6926b36f0b995b757c814fb3"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_linux_amd64.tar.gz"
      sha256 "242cefe9f7074f50b9dad425e5f3822053c9a156f3b1bb25dac8cc61d63c1e04"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
