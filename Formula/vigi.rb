# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.2.1/vigi-darwin-arm64"
      sha256 "3fba568906efb4e0431146f135d71ec227d6e29acdd9080bb2d60283e69d3d8d"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.1/vigi-darwin-amd64"
      sha256 "e942bd6e7490f5ea65ca29dae5fdaf36d85d2f35d710c06cf69aad63689f7012"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.2.1/vigi-linux-arm64"
      sha256 "370825c6415e5e41572dbacf861fe7e619687bd82cbdfda296c81df96d4f2b86"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.1/vigi-linux-amd64"
      sha256 "5ff24343b5646498479e1a017c595b2cd0ce018f98851b4c0c91f11312f34305"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
