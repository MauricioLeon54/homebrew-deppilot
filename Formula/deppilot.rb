class Deppilot < Formula
  desc "Dependency update assistant for JavaScript/TypeScript projects"
  homepage "https://github.com/mauuleo/deppilot"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.8/deppilot-macos-aarch64.tar.gz"
      sha256 "e72b3b5694518eba46e8aa5518f7ceb3816c3553b956180038e8b697818f6578"
    else
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.8/deppilot-macos-x86_64.tar.gz"
      sha256 "0c2ba0a2168b262bac26bdf754be8887b91d8712edf763ecd7c0cf9e0204bf09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.8/deppilot-linux-aarch64.tar.gz"
      sha256 "4ad92f55e42b42bb8fc8b3108d0c5b7a86b2b4ce200283fc373902f3dcaa3af5"
    else
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.8/deppilot-linux-x86_64.tar.gz"
      sha256 "c80d21c54aad88456928ebeb268e4356529fcd12d0e4a0b5345b568e753ef66a"
    end
  end

  def install
    bin.install "deppilot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deppilot --version")
  end
end
