# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.48"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.48/vigi-darwin-arm64"
      sha256 "b7a0022abfaaf014c9a6ad89ae12c1dc9a77c188fba26cbf86923e10fd029b88"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.48/vigi-darwin-amd64"
      sha256 "a08bfad81285929a89cbec2900823c6eca430a9a08eedb53ccb7ed67b843c8a2"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.48/vigi-linux-arm64"
      sha256 "f79adc45d5bbcfe042614774dbad985aff513d7839cf160b03f5fffd4b9f0720"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.48/vigi-linux-amd64"
      sha256 "9371ad3b32e82a8e969d2c955b747c3174531bfb81fe5e751cfcc9176ba24d7b"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
