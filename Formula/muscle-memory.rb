class MuscleMemory < Formula
  desc "Procedural memory for coding agents"
  homepage "https://github.com/iamazhar/muscle-memory"
  version "0.2.4"
  license "MIT"

  on_macos do
    url "https://github.com/iamazhar/muscle-memory/releases/download/v#{version}/mm-macos-arm64.tar.gz"
  end

  on_linux do
    url "https://github.com/iamazhar/muscle-memory/releases/download/v#{version}/mm-linux-x86_64.tar.gz"
  end

  def install
    Dir.glob("mm-*").each do |f|
      bin.install f => "mm"
    end
  end

  test do
    assert_match "muscle-memory", shell_output("#{bin}/mm version")
  end
end
