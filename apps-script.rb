class Apps < Formula
  desc "This script that will install all u need buddy"
  homepage "https://github.com/orbenharoshprojects/apps-script"
  url "https://github.com/orbenharoshprojects/homebrew-support-tier1-apps-repo/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "486ceae665c1a2e9bc1ebf05e20063aa4c71027577c7572a7501f2ffb056df67"
  version "1.0"

  depends_on "apps"

  def install
    bin.install "apps-script"
  end

  test do
    system "#{bin}/apps-script", "--help"
  end
end
