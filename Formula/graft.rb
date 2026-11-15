class Graft < Formula
  desc "Copy-on-write workspaces for parallel coding agents"
  homepage "https://github.com/404khai/graft"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/404khai/graft/releases/download/v0.1.1/graft-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "66999d0d99ec6d773df5c13baab3de02e0bb40060c4ec8299a502510a5e89ef2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/404khai/graft/releases/download/v0.1.1/graft-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "098c7883240b2504b32fa9115d65884800a9a12dcfe2c45adca6e2b062b67fa6"
    end
    on_arm do
      url "https://github.com/404khai/graft/releases/download/v0.1.1/graft-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60987d7bbfe3618181c712fb06f86af5d5af014b7c1f0023b3d5ec57671923b6"
    end
  end

  def install
    bin.install "graft", "graftd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/graft --version")
  end
end
