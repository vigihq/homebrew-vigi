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
      sha256 "b7fe00be9563ecedc54395d54eb4913929749a3a9dc14c4380234155b3c6cec7"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.4/vigi-darwin-amd64"
      sha256 "4b1a7deefa64f70762222038ad2e18c53f3c6f2b086ba142a2f520309b788ec0"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.2.4/vigi-linux-arm64"
      sha256 "8b25f5fe5ad04158a66bbcb8cf7933064f3883c76839e549f1d2f3efb96af9a4"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.4/vigi-linux-amd64"
      sha256 "e3f66ffdcb46dbbf5bef387a664fe7f93f804fd367976c7a37d36d80970cc6db"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
