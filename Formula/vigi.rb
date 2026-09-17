# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.52"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.52/vigi-darwin-arm64"
      sha256 "f388fd9ca8aea3c6b5491436d1a70d69af5b940aa90c04051afe8178ae3575a4"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.52/vigi-darwin-amd64"
      sha256 "42f43847a2cd261480d4525affce79f92ab4224a61de18f84d9dbcfb71fdae31"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.52/vigi-linux-arm64"
      sha256 "df916b6769b85b7a1bb139c73602a2e28f9c3db27642950e2108f2f75437d243"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.52/vigi-linux-amd64"
      sha256 "6da09ef03050df142de998445a916fb7feb6b5df3c8ab018735bac823535c25a"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
