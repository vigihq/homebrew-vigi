# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v1.0.2/vigi-darwin-arm64"
      sha256 "bbc32d60ff035178adaa641b6456fe19472340e013af7e11241d2e2c610febd7"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.2/vigi-darwin-amd64"
      sha256 "e6efde1d470ca536ed286b2b9d7d4a1ede729224860839c878dd986184f2a7b0"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v1.0.2/vigi-linux-arm64"
      sha256 "2c3b5c98ae1550acc7b4401afb11a11893840eff54d6ed57707f5c12be1c14fd"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.2/vigi-linux-amd64"
      sha256 "497ae19a3cbb2d24fe41a06a67ec1c9a172bb2645433b187acda8b5f18b86e5b"
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
