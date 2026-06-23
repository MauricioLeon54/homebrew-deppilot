class Deppilot < Formula
  desc "Dependency update assistant for JavaScript/TypeScript projects"
  homepage "https://github.com/mauuleo/deppilot"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.4/deppilot-macos-aarch64.tar.gz"
      sha256 "baa60d540b44d9ae28b2e3dde3f7d91948acb85e41c0b6a2a5039dcee243f6c4"
    else
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.4/deppilot-macos-x86_64.tar.gz"
      sha256 "5102854651984a678651a119dc0aba771d3884238883da90c661f337a7eabf07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.4/deppilot-linux-aarch64.tar.gz"
      sha256 "ffeeac38f2a92fa5d7bf3c7c9cafee3f833268c6eb981106dc2e6ca808e2f4eb"
    else
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.4/deppilot-linux-x86_64.tar.gz"
      sha256 "7902604f787f40f3210650455eef96d31f07599bc07c3289781f2b456cd556f2"
    end
  end

  def install
    bin.install "deppilot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deppilot --version")
  end
end
