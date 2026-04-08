class Hr < Formula
  desc "CLI for HackerRank for Work API"
  homepage "https://github.com/jholm117/hackerrank-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.0/hr_0.1.0_darwin_arm64.tar.gz"
      sha256 "00efb094fce85a6319b8cba33f105a6569eaa110a184657463b12b52d544dcdc"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.0/hr_0.1.0_darwin_amd64.tar.gz"
      sha256 "1d0d4d494b6b205756c7eeb8c6f1c8e35b7ee79a0491679495be9a420ccc780a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.0/hr_0.1.0_linux_arm64.tar.gz"
      sha256 "bb8a0266d86bf3139a06d9eeed8beb8db349f9d72712d14e16a54863701f6ca5"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.0/hr_0.1.0_linux_amd64.tar.gz"
      sha256 "ab993a795165c22188286edd67dfb3c717f8f68f5ff0b51073ef1cd9ec42e8f3"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    assert_match "CLI for HackerRank", shell_output("#{bin}/hr --help")
  end
end
