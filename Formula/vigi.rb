# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.45"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.45/vigi-darwin-arm64"
      sha256 "3f28368fa06231ef871ffa4f02cfadf359f416e83d9c681ff595210a78e659cc"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.45/vigi-darwin-amd64"
      sha256 "c97f4ab3ea1ace7a9ed28aeb45f37f714b42ce340a1d9e624e0a72f3dfa33479"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.45/vigi-linux-arm64"
      sha256 "c873b628f6479e34bbd30346d2d27d121720237b1db43bb13ddf80771af7b48e"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.45/vigi-linux-amd64"
      sha256 "52ab9578bedb0364f308ae04f23ff0c6bc2f5f39883c48ea0228d2705fd1fbef"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
