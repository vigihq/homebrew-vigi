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
      sha256 "a60859ae210b6e47d7ec0692e39a55db16fb0d6549f2bbcf85cb3b39a7bf9e9c"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.2/vigi-darwin-amd64"
      sha256 "4797ea582b89ef3c9a1795dc3a36775c60aa6f6ba465cac1302f8efab1d1e326"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v1.0.2/vigi-linux-arm64"
      sha256 "d5e89faf9c595ae494e9bcfc62bac36e76c8522c3c0015f971c9ce067db47d31"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.2/vigi-linux-amd64"
      sha256 "462a1a038fa881b93cfbb93a3fc12e303715f2f34c4095b9edfc28e1a078ab41"
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
