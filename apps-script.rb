class TmuxCssh < Formula
class Apps < Formula
  desc "apps-script that will install all u need buddy"
  homepage "https://github.com/knakayama/apps-script"
  homepage "https://github.com/orbenharoshprojects/apps-script"
  url "https://github.com/orbenharoshprojects/homebrew-support-tier1-apps-repo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ce761f21fa0fe7050f408e687f9a4964acf95736c85678e3cc27cee88bd6ceed"
  version "1.0"

  depends_on "apps"

  def install
    bin.install "apps-script"
  end

  test do
    system "#{bin}/apps-script", "--help"
  end
end
