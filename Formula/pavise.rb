class Pavise < Formula
  desc "Fast static security analyzer for iOS IPA files"
  homepage "https://pavise.app"
  version "0.1.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.0/pavise-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8ad905eb557bd706c9410b96f2d7de1c4c86d69c22594fe365d636bdd49c3be9"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.0/pavise-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cfced8cc94145dbd3f1356fe7de506be24b094043747075ed49b78d3b99838e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.0/pavise-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1a85d4d767d927492da3fde9f3c35ed86e2534ffef9e075c950bf33444ad763"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.0/pavise-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4aa7336dbe281e6d09e5e25fd77b4c62f7015e9f7c07dcb1c420723f6c7bdcc5"
    end
  end

  def install
    bin.install "pavise"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pavise --version")
  end
end
