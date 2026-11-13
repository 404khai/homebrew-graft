class Graft < Formula
  desc "Copy-on-write workspaces for parallel coding agents"
  homepage "https://github.com/404khai/graft"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/404khai/graft/releases/download/v0.1.0/graft-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "50cb49ad3f13ead68a67100747daf797cd55d8a32f8c7b8b17316548fdf81217"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/404khai/graft/releases/download/v0.1.0/graft-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22e05abaf50b8bcdb6f50e39a650cf36206456090bd054e5184513bbddc6da03"
    end
    on_arm do
      url "https://github.com/404khai/graft/releases/download/v0.1.0/graft-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a164128a2b08a8c4cdd9a4551d02360902df6348b0daebcd42f4e00c6cf35e1b"
    end
  end

  def install
    bin.install "graft", "graftd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/graft --version")
  end
end
