# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.2.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.2.2/vigi-darwin-arm64"
      sha256 "eb84bda3a3d9aae99f799f55839090f0215fcb84182f23cfc09da3409ddf4a97"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.2/vigi-darwin-amd64"
      sha256 "85916beab9880169956406baf9baabb168aa4350c26a99eff33e6f999a70f633"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.2.2/vigi-linux-arm64"
      sha256 "deab9c9f9b6accb696d066e98cb3a4189d7757e21781b4ed7f15a74124671fc4"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.2/vigi-linux-amd64"
      sha256 "0e054624a07923f53a9fe651a02884b4df4174c591c8b89a4bb998a571d0315b"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
