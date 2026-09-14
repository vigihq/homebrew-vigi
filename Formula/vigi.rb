# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.50"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.50/vigi-darwin-arm64"
      sha256 "094479ba2e3d9df2379e3465cd995ecca2c8f53f0977806f0578916ad41331fa"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.50/vigi-darwin-amd64"
      sha256 "28c7161293221c3c6b8e6108bf4592011903ef34e35b5c8e81d5116f69b4e0f2"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.50/vigi-linux-arm64"
      sha256 "e9a346e3a4e4b5066ef640e531c7fbb96b453c78499c1f7d89ac8dd0b987330b"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.50/vigi-linux-amd64"
      sha256 "05594e29684160054a20896dcdc406aa55c067dcac3314506b3db7f9a43a5e0f"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
