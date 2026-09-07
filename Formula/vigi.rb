# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.47"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.47/vigi-darwin-arm64"
      sha256 "38ad8a9e010dc2e26537967808bfb5ece15fe44e21cad12f45373b99eab772f5"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.47/vigi-darwin-amd64"
      sha256 "e16b0ebb17af1ddafe93dadba4c5ac81f92661e392dfe8ca71b4b91a68e75901"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.47/vigi-linux-arm64"
      sha256 "67642c1c54d600ffe573d285358a01386bb9fd770c6fd508ec9f357ad2b8009a"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.47/vigi-linux-amd64"
      sha256 "902f1da4b606e2018b3c3f943d7dfab7c427fa00ec01d1abe8350d7a36d197e0"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
