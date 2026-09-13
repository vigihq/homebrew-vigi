# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.49"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.49/vigi-darwin-arm64"
      sha256 "6b70403614800108354f7be36094fa8a80c60d76fcacc96e096eb33c70f1a38c"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.49/vigi-darwin-amd64"
      sha256 "a5283de92fd74d54e0abf98ee94b6928d17dd384e724f7a4ce8d22aeb4486b76"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.49/vigi-linux-arm64"
      sha256 "e6d00fe6da7a638d2038143ea1f1453dfe9211dc203fd9049c00774209a2cb4a"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.49/vigi-linux-amd64"
      sha256 "01b32d05e9c733bc6809030a871c83717eab022227ee1ffa3793086c96ac18ae"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
