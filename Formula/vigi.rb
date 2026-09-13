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
      sha256 "06c18b5229b61daa072a0bafe2604c764a296f7b32c72462c2ceeabfc0448cd4"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.49/vigi-darwin-amd64"
      sha256 "c9549c76adc892441ff87f43e55fb5a7db69382b787094deac11d350cdd6b6fc"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.49/vigi-linux-arm64"
      sha256 "865d3d4a1faa76bdbc64695bd4d241568bf2e57b5bdbc84923908f5c431bf29b"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.49/vigi-linux-amd64"
      sha256 "bd8f99c082123f4515f22c7848ed1655c77a37d9b61a68372870e7baac186154"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
