class Asc < Formula
  desc "AI-native CLI for App Store Connect"
  homepage "https://github.com/iamazhar/appstore-connect-cli"
  url "https://github.com/iamazhar/appstore-connect-cli/releases/download/v0.1.0/asc-0.1.0-macos-universal.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc", shell_output("#{bin}/asc --help")
  end
end
