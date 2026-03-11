class AscAi < Formula
  desc "AI-native CLI for App Store Connect"
  homepage "https://github.com/iamazhar/appstore-connect-cli"
  url "https://github.com/iamazhar/appstore-connect-cli/releases/download/v0.2.0/asc-0.2.0-macos-universal.tar.gz"
  sha256 "6d0bb024c8e64ed3631450fdfbcbf7312e8932b935169e1d7383079d812bc70c"
  license "MIT"

  conflicts_with "asc", because: "both install an `asc` binary"

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc", shell_output("#{bin}/asc --help")
  end
end
