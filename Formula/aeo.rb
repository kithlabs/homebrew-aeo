class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_darwin_arm64.tar.gz"
      sha256 "4e2aaa7de7f10d40066e6bdea86f5998ee179b753c4487395fcc003d726cef76"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_darwin_arm64.tar.gz"
      sha256 "4e2aaa7de7f10d40066e6bdea86f5998ee179b753c4487395fcc003d726cef76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_darwin_arm64.tar.gz"
      sha256 "4e2aaa7de7f10d40066e6bdea86f5998ee179b753c4487395fcc003d726cef76"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.3/aeo_darwin_arm64.tar.gz"
      sha256 "4e2aaa7de7f10d40066e6bdea86f5998ee179b753c4487395fcc003d726cef76"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
