# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.2.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.2.5/vigi-darwin-arm64"
      sha256 "f2bb8cc5fea61c44e1a4a0f3e71b8a659cb8cfc3825ebe76c0978bd757f4c9a4"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.5/vigi-darwin-amd64"
      sha256 "a27fd4a2c5c47b54dda9f6092d1f088021eeaf52bbbe9edca30afb7b82d2abd0"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.2.5/vigi-linux-arm64"
      sha256 "e83e34927e7c1ced738962e2e3dc49e3d7dec1371eb089fd1c22569e2040647f"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.5/vigi-linux-amd64"
      sha256 "2bdcaf08b53bdb482f81305ade73c3c6c4e0f890497976080a53c2579ff95d67"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
