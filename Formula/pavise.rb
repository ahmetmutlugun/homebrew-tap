class Pavise < Formula
  desc "Fast static security analyzer for iOS IPA files"
  homepage "https://pavise.app"
  version "0.1.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.2/pavise-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "7e43184b3a954df68bba23074c07782b0459d37c43209e7d0880d1986eb721d2"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.2/pavise-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "b0d7481f9db1bb538aa76db736d0bac56d6c76d911beb8d568fc8e5b9791dcb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.2/pavise-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42897ccd6f6965c9e9941dc005d865130bd23b8e10db029f25eab9a8ea5f2317"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.2/pavise-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f7688d3b25601fee1581f6a92a6cf7395d15f2e4ed466010caa2e374064f589"
    end
  end

  def install
    bin.install "pavise"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pavise --version")
  end
end
