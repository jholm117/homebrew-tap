class Hr < Formula
  desc "CLI for HackerRank for Work API"
  homepage "https://github.com/jholm117/hackerrank-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.3/hr_0.1.3_darwin_arm64.tar.gz"
      sha256 "d12b1c26b3df62b3bbe383feecac1d734f003347c4e107bf7446864b3cc9df88"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.3/hr_0.1.3_darwin_amd64.tar.gz"
      sha256 "beffa648954072fcdd929935b4b26e6e9b9dca24139b08cf4b8e6dfac4d039f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.3/hr_0.1.3_linux_arm64.tar.gz"
      sha256 "ffb32730e4914a3299a637e35f30930fe4314495c31fca3f7b89a968d16524c5"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.3/hr_0.1.3_linux_amd64.tar.gz"
      sha256 "389a0bd0e271305aaeba176001118a6b17a9ba5b1eb9ce5417a4d9d945897f49"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    assert_match "CLI for HackerRank", shell_output("#{bin}/hr --help")
  end
end
