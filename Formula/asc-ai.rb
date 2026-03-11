class AscAi < Formula
  desc "AI-native CLI for App Store Connect"
  homepage "https://github.com/iamazhar/appstore-connect-cli"
  url "https://github.com/iamazhar/appstore-connect-cli/releases/download/v0.1.0/asc-0.1.0-macos-universal.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  conflicts_with "asc", because: "both install an `asc` binary"

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc", shell_output("#{bin}/asc --help")
  end
end
