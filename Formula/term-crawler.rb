class TermCrawler < Formula
  desc "Subversive idle dungeon crawler for terminal workers"
  homepage "https://github.com/ProgramadoresSinFronteras/term-crawler"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ProgramadoresSinFronteras/homebrew-term-crawler/releases/download/v0.1.0/term-crawler-macos-arm64.tar.gz"
      sha256 "52e9317d7737e0081946af03196a789d4da78d442b513b0c5cc06322818e84e0"
    end
    on_intel do
      url "https://github.com/ProgramadoresSinFronteras/homebrew-term-crawler/releases/download/v0.1.0/term-crawler-macos-x64.tar.gz"
      sha256 "c15ae78c4d923b8798b03d8618a09b59266e06d4f4a25448542a592216b06c6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ProgramadoresSinFronteras/homebrew-term-crawler/releases/download/v0.1.0/term-crawler-linux-arm64.tar.gz"
      sha256 "475cf5628d265d1da93f4e3f76fd05a7ffa71ac648e59798cdd4d6d6d86659eb"
    end
    on_intel do
      url "https://github.com/ProgramadoresSinFronteras/homebrew-term-crawler/releases/download/v0.1.0/term-crawler-linux-x64.tar.gz"
      sha256 "13d422dd9490f275a98dd365a515ad9b5d3519b7a10b9349aa40ba72a9ad437d"
    end
  end

  def install
    bin.install "term-crawler"
  end

  test do
    assert_match "term-crawler", shell_output("#{bin}/term-crawler --version")
  end
end
