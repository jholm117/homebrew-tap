class Hr < Formula
  desc "CLI for HackerRank for Work API"
  homepage "https://github.com/jholm117/hackerrank-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.1/hr_0.1.1_darwin_arm64.tar.gz"
      sha256 "522373072bafd0f9d32dd08b9ec66a1834523acd5a3a064e21574269c913211c"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.1/hr_0.1.1_darwin_amd64.tar.gz"
      sha256 "cb985eedd1688c9534e8104ff84c87be27caa8d11ac5aa3e6423568c94817fa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.1/hr_0.1.1_linux_arm64.tar.gz"
      sha256 "aecf99bbdefd243822ca6bc477fd986b7cad6df3248dbcdbe0367a878e0433e0"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.1/hr_0.1.1_linux_amd64.tar.gz"
      sha256 "943c2a8b1b3f08745fe8d124f9240996f2302dab1db694025e15691ac17da451"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    assert_match "CLI for HackerRank", shell_output("#{bin}/hr --help")
  end
end
