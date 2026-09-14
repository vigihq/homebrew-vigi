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
      sha256 "587667554c50be6a284c5e798bf7c5fc3878212bda473aef1245250e54cdef71"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.50/vigi-darwin-amd64"
      sha256 "22496ea57663dbca836e6bacf910dfc828ca6ac4f7f86176dbf99d6ad2f06b06"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.50/vigi-linux-arm64"
      sha256 "7d5c4b2e2aa8dd2214ec098e275576fe4b63946bff68e040437f12e0f0ad77ee"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.50/vigi-linux-amd64"
      sha256 "046255b1b6e9c4d312b8045718e85dc2812b4c2f7199b9b79a934e76dccc551e"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
