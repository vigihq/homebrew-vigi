# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.41"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.41/vigi-darwin-arm64"
      sha256 "34680bdd7721cb7206b1cfa47c1136d68763d1e573b18e6ca8bf1ba7d4d915ad"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.41/vigi-darwin-amd64"
      sha256 "9e287626b217d4546552c16aa8678b62e682c90e10ce6c64821fe3b69ea3378a"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.41/vigi-linux-arm64"
      sha256 "af7e4360ea0e453b53b2b7c61ee62348eaaa3ed324b6fb9b73f4e6844d3c7e82"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.41/vigi-linux-amd64"
      sha256 "a89da473f50f207fa959cea5aa732453ac73a344d56246810c4cd9689dc847ef"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
