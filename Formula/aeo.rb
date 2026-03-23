class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.0/aeo_darwin_arm64.tar.gz"
      sha256 "087a01d4ea6792c34f4eba293aeb2036c02d606ca9d0535de8a57d5b7dafbc7a"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.0/aeo_darwin_amd64.tar.gz"
      sha256 "cb3f3fbfd9ae9dac2266ba80df21daf6bf0b6e17495a9515268e6d91ef9422de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.0/aeo_linux_arm64.tar.gz"
      sha256 "d8c4fe04301167a881f77db21cd73b28e5fa965ea2b831950faa8789fcfd90ce"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.5.0/aeo_linux_amd64.tar.gz"
      sha256 "58c2cb82bcc34afa0ae7fd4df2690104101e7113d4ac90bc8475a1b67959847c"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
