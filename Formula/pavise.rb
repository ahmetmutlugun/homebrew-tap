class Pavise < Formula
  desc "Fast static security analyzer for iOS IPA files"
  homepage "https://pavise.app"
  version "0.2.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.2.0/pavise-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "97784b7dffcda356a718733044b68e6b26180730075b0b5d2aa83dec62802288"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.2.0/pavise-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "12f7aa2f7d96b334df25d29d8ae886f65685d748d2f1988e6be6fe5b9fa17be5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.2.0/pavise-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "489a90bf8ac26d65ea94a18bcc00d29a3e463c055fab8edadf7214aaa12788af"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.2.0/pavise-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3507717bcca8cc84b5c607d1227f362764a9b97879653184ea25ac6946c8772c"
    end
  end

  def install
    bin.install "pavise"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pavise --version")
  end
end
