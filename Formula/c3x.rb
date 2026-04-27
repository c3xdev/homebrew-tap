class C3x < Formula
  desc "Open source cloud cost estimation for Terraform, Terragrunt, and CloudFormation"
  homepage "https://c3x.dev"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-darwin-arm64.tar.gz"
      sha256 "aab0097d82bff4a805e1939731f22a9d126559f8d0ef997dfe8e534ae2bd2144"

      def install
        bin.install "c3x-darwin-arm64" => "c3x"
      end
    else
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-darwin-amd64.tar.gz"
      sha256 "a61ada2f136de8864da1a948cc7933f2b25f4352440289348262b849859da362"

      def install
        bin.install "c3x-darwin-amd64" => "c3x"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-linux-arm64.tar.gz"
      sha256 "13febf8ccb79529d4602ef139ffaad09051ad541068a8a1429e6094ee4610fbd"

      def install
        bin.install "c3x-linux-arm64" => "c3x"
      end
    else
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-linux-amd64.tar.gz"
      sha256 "15a696567b743c5990f21bde405b7b850dfcdf5d69f64bc93b7eaa3ae4820edc"

      def install
        bin.install "c3x-linux-amd64" => "c3x"
      end
    end
  end

  test do
    assert_match "c3x", shell_output("#{bin}/c3x --version")
  end
end
