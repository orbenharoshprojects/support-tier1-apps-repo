# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SupportTier1AppsRepo < Formula
  desc "The needed "day-to-day" apps for a tier 1 support engineer  "
  homepage "https://github.com/orbenharoshprojects/homebrew-support-tier1-apps-repo"
  url "https://github.com/orbenharoshprojects/support-tier1-apps-repo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "719169fed451fe9cce434ae335783f3946c3f7bf947046166bcd829366523dc3"
  license ""

 #depends_on "pu-script"

  def install
    bin.install "pu-script"
  end

  test do
    system "#{bin}/pu-script", "--help"
  end
end
