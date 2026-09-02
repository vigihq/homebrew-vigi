# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.39"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.39/vigi-darwin-arm64"
      sha256 "6fb7fb14c24396d067c7ec91a99f9d97e5f45ba160cf34b954d9a7d8fb27c410"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.39/vigi-darwin-amd64"
      sha256 "71283609e61c1914b149e2ca7db1ea0210393616ed9bf3b929fa6a3af9700ecb"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.39/vigi-linux-arm64"
      sha256 "921ec74c87e473b269d1055704f4678deddcf095f350c44c2ba43cbc26ec92ea"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.39/vigi-linux-amd64"
      sha256 "64324b9c3aaed13409fd3a5b731079544ffd1bf2a9577b60320c29024f2575dd"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
