class C3x < Formula
  desc "Open source cloud cost estimation for Terraform, Terragrunt, and CloudFormation"
  homepage "https://c3x.dev"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "c3x"
  end

  test do
    assert_match "c3x", shell_output("#{bin}/c3x --version")
  end
end
