class Deppilot < Formula
  desc "Dependency update assistant for JavaScript/TypeScript projects"
  homepage "https://github.com/mauuleo/deppilot"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.5/deppilot-macos-aarch64.tar.gz"
      sha256 "3aa9cc14b8c9f0f162a7af33537a1714f6e38e3d2093974b9a09812f88af1cd1"
    else
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.5/deppilot-macos-x86_64.tar.gz"
      sha256 "84c81cfc7e30510b40e2cab0a8c0222a1bf4d8575db1df499b8565b3b6f185a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.5/deppilot-linux-aarch64.tar.gz"
      sha256 "6e4ebd6dd5c9c274941dc39e032023d3d879cc2221f52d1fe5bab363670e866b"
    else
      url "https://github.com/mauuleo/deppilot/releases/download/v0.1.5/deppilot-linux-x86_64.tar.gz"
      sha256 "c07f9be400955f3f4594aa19b26121f39a370e0086b13c280dfad4b383cacb04"
    end
  end

  def install
    bin.install "deppilot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deppilot --version")
  end
end
