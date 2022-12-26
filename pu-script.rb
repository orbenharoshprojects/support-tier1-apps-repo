# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SupportTier1AppsRepo < Formula
  desc "The needed "day-to-day" apps for a tier 1 support engineer  "
  homepage "https://github.com/orbenharoshprojects/homebrew-support-tier1-apps-repo"
  url "https://github.com/orbenharoshprojects/support-tier1-apps-repo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "719169fed451fe9cce434ae335783f3946c3f7bf947046166bcd829366523dc3"
  license ""

  depends_on "pu-script"

  def install
    bin.install "pu-script"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test support-tier1-apps-repo`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
