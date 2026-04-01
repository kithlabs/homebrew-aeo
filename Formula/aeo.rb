class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.0/aeo_darwin_arm64.tar.gz"
      sha256 "ce49f5029f6e483294777c9e98b4dfb8058c565d8a1ef591d5b7b88668d7b5e0"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.0/aeo_darwin_amd64.tar.gz"
      sha256 "8a8d11dfdc1ffdd7c8896fbc7cc1c76b73241bda385c27813cb6acaa74030eec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.0/aeo_linux_arm64.tar.gz"
      sha256 "2a34d5b22a218bceb95985f9fd768c9034b12b9d66a2159719e1e2ce3242d4a8"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.8.0/aeo_linux_amd64.tar.gz"
      sha256 "42d4b69354ffd4506546f7f66e38077e967c5455b472a4d4d0c77c212dc79a59"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
