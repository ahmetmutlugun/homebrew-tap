class Pavise < Formula
  desc "Fast static security analyzer for iOS IPA files"
  homepage "https://pavise.app"
  version "0.1.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.1/pavise-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "3220f6c28a7bb1dfca531bfdbba707abcd4d746aaa4a2d54f86f0d8c2bd5ab49"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.1/pavise-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "33b5c19ef8c051f9447112625db9e1a1dab1e471ed4edbaa8995000bd6f01498"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.1/pavise-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43ae6161bdb6933663c98c58d74c99bc9ffa711c01f3cf8f35f96f2c7ed20a50"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.1/pavise-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa571d9ba67f654522eb3c0831d62178aac2ea91aff4a3ee17db7c3b72944556"
    end
  end

  def install
    bin.install "pavise"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pavise --version")
  end
end
