# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.51"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.51/vigi-darwin-arm64"
      sha256 "7691fbeca031c9ccce4ba2bde30a59cf879d6c63b837e2b7a0ff4a03a6bd4ef6"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.51/vigi-darwin-amd64"
      sha256 "f9a0deafa7f685d2485e8cd5a91aea3f0563c1f880ed45ffe88d9e6d44abfbea"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.51/vigi-linux-arm64"
      sha256 "05726e41aa1613f98223b8f589c19db2012a37177310255639f5a11c29c91041"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.51/vigi-linux-amd64"
      sha256 "bea8d5669fa306aa4144aa05534225d355e029c0fa397773ec892e9082459c1e"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
