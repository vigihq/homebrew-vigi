# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.2.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.2.3/vigi-darwin-arm64"
      sha256 "1d2dbdece0211d5891cc2969eabe7a478a4964d179621e737422085dde183b97"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.3/vigi-darwin-amd64"
      sha256 "1c161c081b6ae733b2a15854bbf67a7590e55c3a9586d3f5d72aa84d9de123b8"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.2.3/vigi-linux-arm64"
      sha256 "3b1795220585a6559b73566436cbfb1229c705dbf428314a7cb640667562ded5"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.3/vigi-linux-amd64"
      sha256 "ee1fff258a2ff6751c088a32b04c37b704a43ffcad28caf40b04dcd71a01ace7"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
