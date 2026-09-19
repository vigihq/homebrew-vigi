# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.2.0/vigi-darwin-arm64"
      sha256 "6bbd7da1100979ca03f80841e01de905948d3166f9ef511698a87dd78e019b5a"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.0/vigi-darwin-amd64"
      sha256 "bbfac44c87a97cb738471f50f4c70408567c99b4113c26de4dc6e1fad006c6d8"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.2.0/vigi-linux-arm64"
      sha256 "4d257244f3dbd589b8f1a3322c66c67b43195e67258ea5108a7c6c09b01f9d1f"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.0/vigi-linux-amd64"
      sha256 "c0216375feafb84602d0dd7aeb7154b018808f3a620fb00779e9c108f4b1a929"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
