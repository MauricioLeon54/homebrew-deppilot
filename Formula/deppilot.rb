class Deppilot < Formula
  desc "Dependency update assistant for JavaScript/TypeScript projects"
  homepage "https://github.com/mauuleo/deppilot"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.6/deppilot-macos-aarch64.tar.gz"
      sha256 "df7e345365c4ae38db238ce99d202cd9abc27d4871e53257df588b6d2b7c7885"
    else
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.6/deppilot-macos-x86_64.tar.gz"
      sha256 "91bee2dd398f18c1ccc4559b6013175d3d2e2e2daa385a56f901b8a7503208e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.6/deppilot-linux-aarch64.tar.gz"
      sha256 "208e86be781141b2a4d1e5d48745294458b93bbc341a6c05ae63e6ecedd4cb21"
    else
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.6/deppilot-linux-x86_64.tar.gz"
      sha256 "ff956d632b739a3ebcd548f0110267e7c28fd12cc7837cb3f9c7014a988ee878"
    end
  end

  def install
    bin.install "deppilot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deppilot --version")
  end
end
