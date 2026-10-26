class Pavise < Formula
  desc "Fast static security analyzer for iOS IPA files"
  homepage "https://pavise.app"
  version "0.1.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.3/pavise-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "7437b892f6ce3ef036af28f6733e5340e8860f67110ba7a5042b3446e05faef6"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.3/pavise-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "e2d3e727d8dfbfaf03337152c7c271aa6b7f2f473b9871c9495c551e76704bb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.3/pavise-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2129717c98571ce9d963a3e94fb2239725cd1b5783375d9a6b6909db80c9861"
    end
    on_intel do
      url "https://github.com/ahmetmutlugun/pavise/releases/download/v0.1.3/pavise-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2eaa6b1a9965726e8559316955befe0a00d56827e9916b7f7ad07fcbf10f0987"
    end
  end

  def install
    bin.install "pavise"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pavise --version")
  end
end
