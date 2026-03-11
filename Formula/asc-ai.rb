class AscAi < Formula
  desc "AI-native CLI for App Store Connect"
  homepage "https://github.com/iamazhar/appstore-connect-cli"
  url "https://github.com/iamazhar/appstore-connect-cli/releases/download/v0.1.0/asc-0.1.0-macos-universal.tar.gz"
  sha256 "8fd60af4e1ca2644ea654775508a34beb2c357cf235550e09f6da4a6c6bad94f"
  license "MIT"

  conflicts_with "asc", because: "both install an `asc` binary"

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc", shell_output("#{bin}/asc --help")
  end
end
