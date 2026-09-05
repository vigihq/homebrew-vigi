# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.43"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.43/vigi-darwin-arm64"
      sha256 "b04b4fce8dc118fdcf634d652266b15686d7fc03e868c4a88584930d7f9bca1c"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.43/vigi-darwin-amd64"
      sha256 "39934823b0ad9fc8d3820c80b9320c1d7d07d60e90aa96ac0d2ba9338215d0b9"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.43/vigi-linux-arm64"
      sha256 "182b7302ff366dc6b929a7841603aad79510514757d69545ef24c835d2c05b01"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.43/vigi-linux-amd64"
      sha256 "7b0de6c6701a213710ed5c9423e079de42015b449afca152023911ceb675ca56"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
