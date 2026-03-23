class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_darwin_arm64.tar.gz"
      sha256 "85a5db5445a9db31d8b2d7542d384de453f2d94defbdc3173bae001a2a30c43f"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_darwin_amd64.tar.gz"
      sha256 "177b2c3d8a6b2af9aa83a2d5becd9d416c693b9ea96a3317e0817e9bc20cb301"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_linux_arm64.tar.gz"
      sha256 "74e244e3535b14dc1cceb85d186e4826c412138bd871b8f2a255ebfc4dfbb62a"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_linux_amd64.tar.gz"
      sha256 "316b377e1c35206b9ff6cfe14ddc9e7238b36142fb2c388f8a960ea17f879cb4"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
