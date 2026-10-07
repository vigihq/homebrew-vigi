# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.2.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.2.4/vigi-darwin-arm64"
      sha256 "4197cbc465de5d6fcc6f6672f0925baca4b7deb245af9932fd9774d4323bfcf5"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.4/vigi-darwin-amd64"
      sha256 "1312e0347ae66dde3be52bc53c7586dd5fd3580cda17d6605760c9ffeda4583a"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.2.4/vigi-linux-arm64"
      sha256 "90602b641afee6efb294259d7fd93c48abf2019a184ff75bbb959cb7c0ecf67d"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.4/vigi-linux-amd64"
      sha256 "47667e66b236ff87bbcbd26ffabd4d5f132d79077ef0e63389287914ac94eff7"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
