class Graft < Formula
  desc "Copy-on-write workspaces for parallel coding agents"
  homepage "https://github.com/404khai/graft"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/404khai/graft/releases/download/v0.2.0/graft-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "fca472c2659af0d2ce592f432db9b7d49018c6348bef8f5b0866fe0e8e2dd686"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/404khai/graft/releases/download/v0.2.0/graft-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8450bb807db14cdb8e2b0ad925f78c143c84accf4605a4d17526004cfcc7c86"
    end
    on_arm do
      url "https://github.com/404khai/graft/releases/download/v0.2.0/graft-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19223b34f580852ef15d2b16134ce36dbe05a499ba1c87b4e1cca456754bcaae"
    end
  end

  def install
    bin.install "graft", "graftd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/graft --version")
  end
end
