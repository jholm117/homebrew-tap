class Pd < Formula
  desc "PagerDuty CLI - manage incidents, services, schedules and more"
  homepage "https://github.com/jholm117/pagerduty-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jholm117/pagerduty-cli/releases/download/v0.2.0/pd-v0.2.0-1e5d587-darwin-arm64.tar.gz"
      sha256 "f79de379ce0c9be09da6d112174ee710c6451519384d7f11461b9a14567ee693"
    else
      url "https://github.com/jholm117/pagerduty-cli/releases/download/v0.2.0/pd-v0.2.0-1e5d587-darwin-x64.tar.gz"
      sha256 "abfee0fbf02a1e696d79bb22ee02ad0ca42f9e5276d4dafcb186ce27fbe95733"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/pd"
  end

  test do
    assert_match "pagerduty-cli", shell_output("#{bin}/pd --version")
  end
end
