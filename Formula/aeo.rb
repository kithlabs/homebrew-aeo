class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.1/aeo_darwin_arm64.tar.gz"
      sha256 "9817cb736bb1d921faffcf18e93b9adb2c6203d199d09c88b946cf40ae413d78"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.1/aeo_darwin_amd64.tar.gz"
      sha256 "43cce4b52b47822b931e535b33e75bf658a56f2894c50d8678f422938a4fa1f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.1/aeo_linux_arm64.tar.gz"
      sha256 "7dd46a0624a1248fef13f6341aabcb08bb6399385f81afad155e8180309a98e0"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.1/aeo_linux_amd64.tar.gz"
      sha256 "c5855be1591a9382b7ef91e9388e56f190eb9db667e7f4e51f4208653d55a5a1"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
