class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.0/aeo_darwin_arm64.tar.gz"
      sha256 "f1d93df77061f35e1a6a44fa26e53fa98702a5db7d6fecbd6ad100308e300671"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.0/aeo_darwin_arm64.tar.gz"
      sha256 "f1d93df77061f35e1a6a44fa26e53fa98702a5db7d6fecbd6ad100308e300671"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.0/aeo_darwin_arm64.tar.gz"
      sha256 "f1d93df77061f35e1a6a44fa26e53fa98702a5db7d6fecbd6ad100308e300671"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.0/aeo_darwin_arm64.tar.gz"
      sha256 "f1d93df77061f35e1a6a44fa26e53fa98702a5db7d6fecbd6ad100308e300671"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
