class C3x < Formula
  desc "Open source cloud cost estimation for Terraform, Terragrunt, and CloudFormation"
  homepage "https://c3x.dev"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-darwin-arm64.tar.gz"
      sha256 "581d55dcdbcaede278a64b6dab4a02368de43a9639b10d6423e3688546b8045e"

      def install
        bin.install "c3x-darwin-arm64" => "c3x"
      end
    else
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-darwin-amd64.tar.gz"
      sha256 "eb92dd23e110089763c1e5fbc8da432af35275eb94f508b288aedc8142a34136"

      def install
        bin.install "c3x-darwin-amd64" => "c3x"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-linux-arm64.tar.gz"
      sha256 "5f71afd61f1e298dbe338e5108bc4165a4e60eb3b8fa6d637dc406172705ff42"

      def install
        bin.install "c3x-linux-arm64" => "c3x"
      end
    else
      url "https://github.com/c3xdev/c3x/releases/download/v#{version}/c3x-linux-amd64.tar.gz"
      sha256 "7b3c344ed651ea02efe4721c38a9028f2de9c0f0ea92e12b5a8cb38aaa4894df"

      def install
        bin.install "c3x-linux-amd64" => "c3x"
      end
    end
  end

  test do
    assert_match "c3x", shell_output("#{bin}/c3x --version")
  end
end
