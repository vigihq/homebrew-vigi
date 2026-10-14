# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "1.0.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v1.0.3/vigi-darwin-arm64"
      sha256 "f640fe9d82331cb67ea03f483745930ce7bdda54530f6a8d342f277fc9d29931"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.3/vigi-darwin-amd64"
      sha256 "6bbf1e1a5422d09b757c5fcda2b4793190b5afcadaf5ef97ae7cb3b587d5a571"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v1.0.3/vigi-linux-arm64"
      sha256 "3ce3c0b7e8cdc49b38caf19e3356c674b7588d981756103f2b632fd8ca246189"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.3/vigi-linux-amd64"
      sha256 "d2f70b410b151946dd9195f8d05336f7498517f005cc2b249d112a8704ac9f4d"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  def caveats
    <<~EOS
      Vigilance is installed but not started. To start it, run:
        vigi
    EOS
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
