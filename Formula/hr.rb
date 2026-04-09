class Hr < Formula
  desc "CLI for HackerRank for Work API"
  homepage "https://github.com/jholm117/hackerrank-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.4/hr_0.1.4_darwin_arm64.tar.gz"
      sha256 "68775c399736bff8cb9e31a2c7b04640ae3dff4800e1bf447e54bad11dfbaa1a"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.4/hr_0.1.4_darwin_amd64.tar.gz"
      sha256 "284dc45bfaa8decc4ecbf292b84e80707509169e560139227de1927682ae0181"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.4/hr_0.1.4_linux_arm64.tar.gz"
      sha256 "c2770d509ed4f206d815f725e62ccdd359fda94489a5df79d40ced039a262337"
    else
      url "https://github.com/jholm117/hackerrank-cli/releases/download/v0.1.4/hr_0.1.4_linux_amd64.tar.gz"
      sha256 "272e29fa4f65cf82470d667ffd1908624c19d4f29ba2f9eff949934641828390"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    assert_match "CLI for HackerRank", shell_output("#{bin}/hr --help")
  end
end
