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
      sha256 "fd1315a03071326003f3c6b7284106de04c29153686a4ac5b30d07b405c98f63"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.0/vigi-darwin-amd64"
      sha256 "2685ab207774433fc48d3cbe9594b2a1080b18503986dfab482e952a31d7b91c"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.2.0/vigi-linux-arm64"
      sha256 "ad8705066d45661efa184bf9b47e8fd8bccfc271e6f694efca1f8274e9fe7706"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.2.0/vigi-linux-amd64"
      sha256 "86483cafa39ad8ac6b7a15144a2465ec81661af83f665230d45047c1d43281b3"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
