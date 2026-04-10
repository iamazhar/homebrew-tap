class MuscleMemory < Formula
  desc "Procedural memory for coding agents"
  homepage "https://github.com/iamazhar/muscle-memory"
  url "https://github.com/iamazhar/muscle-memory/archive/refs/tags/v0.5.0.tar.gz"
  license "MIT"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    system "uv", "build", "--wheel"
    whl = Dir["dist/*.whl"].first
    system "uv", "pip", "install", whl, "--target", libexec/"lib"

    # Create wrapper scripts that set PYTHONPATH
    %w[mm muscle-memory].each do |cmd|
      (bin/cmd).write <<~BASH
        #!/bin/bash
        PYTHONPATH="#{libexec}/lib" exec "#{Formula["python@3.12"].bin}/python3.12" -m muscle_memory "$@"
      BASH
    end
  end

  test do
    assert_match "muscle-memory", shell_output("#{bin}/mm version")
  end
end
