class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "0.4.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.5/aeo_darwin_arm64.tar.gz"
      sha256 "843fe1642218abcdef742257eecdb3a43a4cd9cadee94e438f8848b11c3f7e8f"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.5/aeo_darwin_amd64.tar.gz"
      sha256 "d4d57fa3cc67d51795b9c2efdb7dea24caa417400c19b787ad2acd5b3b344939"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.5/aeo_linux_arm64.tar.gz"
      sha256 "7b3b7e448a90433f874bb0c59726be1258555885893c6718ed3b09f409907628"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v0.4.5/aeo_linux_amd64.tar.gz"
      sha256 "71d32a12114c270a668817213186fbe10f263b0dd19c2e58b67e98ea697768c5"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
