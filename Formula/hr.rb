class Hr < Formula
  desc "CLI for HackerRank for Work API"
  homepage "https://github.com/jholm117/hackerrank-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.2/hr_0.1.2_darwin_arm64.tar.gz"
      sha256 "5eb5a31a742f990393b1f4fe730541e78a54f5ff2dbe89260aaf5d1d3817b150"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.2/hr_0.1.2_darwin_amd64.tar.gz"
      sha256 "824e7d4e6806bea1438ed0cf6b7504ab8262586f91f9f966c81ebf708a657b83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.2/hr_0.1.2_linux_arm64.tar.gz"
      sha256 "c1aaf1e06c818c81aab8873348a7cab17ec3dc18b0bd041d1953df59877a5188"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.2/hr_0.1.2_linux_amd64.tar.gz"
      sha256 "dd2c27f495fa7338b55ffd5bdc74702e2a8cbc201bd00298aa31fba0b191e4a0"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    assert_match "CLI for HackerRank", shell_output("#{bin}/hr --help")
  end
end
