class Hr < Formula
  desc "CLI for HackerRank for Work API"
  homepage "https://github.com/jholm117/hackerrank-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.5/hr_0.1.5_darwin_arm64.tar.gz"
      sha256 "0f521b4f0174b5af9b694d743daeff7242ff05e3f7ff4728949e012549b35f7c"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.5/hr_0.1.5_darwin_amd64.tar.gz"
      sha256 "af4f02dcfe39744bfcadf9ef4fd745dac6a4378c1b67a827b155bd19eaaada1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.5/hr_0.1.5_linux_arm64.tar.gz"
      sha256 "ff5eff5e01f6ad54f33952add310b2eca8711dc8e74d01f0fba68089a8950c07"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.5/hr_0.1.5_linux_amd64.tar.gz"
      sha256 "06b1309d4ea9dd536ef8714988c3b51c208d869191623a593fd679f1b26b395b"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    assert_match "CLI for HackerRank", shell_output("#{bin}/hr --help")
  end
end
