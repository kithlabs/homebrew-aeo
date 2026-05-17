class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.3.0/aeo_darwin_arm64.tar.gz"
      sha256 "9eb429c2434837b2e73e2bc3b417167bab1fb078148c3327e94305af853c78a7"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.3.0/aeo_darwin_amd64.tar.gz"
      sha256 "bc47888d6c1222986ff40fcb1b6f6bc821c49e9679c24ed33bbf618f045d299c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.3.0/aeo_linux_arm64.tar.gz"
      sha256 "d59360ca612a24e061a4b69b42ede967bc77135dda1e91e78f0889cf68455da9"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.3.0/aeo_linux_amd64.tar.gz"
      sha256 "92e6a0db824614dcf03797e84ca8d997f2b9ae35b332412d0a66f6db49481c1b"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
