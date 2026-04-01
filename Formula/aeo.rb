class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.7.1/aeo_darwin_arm64.tar.gz"
      sha256 "f3445c65bce0262c4bf01e30233785dba0e1a24347b63f557886afb5feb2b701"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.7.1/aeo_darwin_amd64.tar.gz"
      sha256 "1d42c2b78ff5cf99ab9a1f2a6629f1115b8b3a88c769f7ca3c76f407c9743add"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.7.1/aeo_linux_arm64.tar.gz"
      sha256 "7a15f30dc01dc8369b6f333bd24a0e77bf61b05e14ac700b6d023991102275ee"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.7.1/aeo_linux_amd64.tar.gz"
      sha256 "a8c9fd44f4645795e3546c3a15ed8bab0e8003fb6b67814cb29a8075f4f25630"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
