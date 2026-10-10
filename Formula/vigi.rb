# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v1.0.1/vigi-darwin-arm64"
      sha256 "edd988f49f12ec17dea92a5678af078925a515b8e44af27ec33c940b4b1fbc15"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.1/vigi-darwin-amd64"
      sha256 "f7ea61f864c2f9311584009a5e8e22d9cf1659115f8165a88aa0fa30d16eda2f"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v1.0.1/vigi-linux-arm64"
      sha256 "963d1a1b74b35d074b4446dec5beff0647892c4ca560eb1cefa060b0caaa7a53"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.1/vigi-linux-amd64"
      sha256 "de174e0277a059497f56f62e3bba32ddbd6c3253b3f526a6689d9ee4a98745ce"
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
