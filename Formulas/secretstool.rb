class Secretstool < Formula
  desc "A .NET 8 CLI tool that fetches GitLab CI/CD project-level variables via the GitLab API and writes them into the .NET user secrets storage."
  homepage "https://github.com/Berezhnyk/dotnet-secrets-tool"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Berezhnyk/dotnet-secrets-tool/releases/download/v1.1.0/secretstool-macos-x64.tar.gz"
      sha256 "bb199d13bb23d7a1454202108c8f5368659702b3d0c85cc7601f99110af92558"
    end

    on_arm do
      url "https://github.com/Berezhnyk/dotnet-secrets-tool/releases/download/v1.1.0/secretstool-macos-arm64.tar.gz"
      sha256 "9c8670535c7ca7e5150c9bc081f0b5cdb2a1808929ab7d1115ba14b91a5746b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Berezhnyk/dotnet-secrets-tool/releases/download/v1.1.0/secretstool-linux-x64.tar.gz"
      sha256 "03e2b42136479ae1d46f0fde7b5b77fac3ce7d9bb81b7a937a93450476c96b26"
    end
  end

  def install
    bin.install "SecretsTool"
  end

  test do
    system "#{bin}/SecretsTool", "--help"
  end
end
