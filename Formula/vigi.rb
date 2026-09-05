# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.44"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.44/vigi-darwin-arm64"
      sha256 "168be61bbf10403c9a6cc0eb3736bbfaf29ec79cf1fb1b61b9eb23811f144ee8"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.44/vigi-darwin-amd64"
      sha256 "893064cb4eaa86e2bccccd2c7a362722bc8d2c535e640ecd59afe9d5c80c2f22"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.44/vigi-linux-arm64"
      sha256 "b0139d213955e0b3a268f553a12e18118c037576c60b989c3f03ab246a0b51c6"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.44/vigi-linux-amd64"
      sha256 "d1617feb4e8788faaf525c260b519828fd557440f894290eb6e40c8075625643"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
