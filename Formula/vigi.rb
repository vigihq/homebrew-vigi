# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.46"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.46/vigi-darwin-arm64"
      sha256 "9b26f6c990ec465478c197c697ae637a693cf4af388f38ae8ce92396f10192c0"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.46/vigi-darwin-amd64"
      sha256 "f5e13928a8670d62c0a44aca6d2db63deddfea3e11ff63d7e3a1de7c7f8aa663"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.46/vigi-linux-arm64"
      sha256 "3bfa5a8d22753ae3857e6ab7d62c5ba72002c1356a37e1f8cec7488a8541d55e"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.46/vigi-linux-amd64"
      sha256 "684444bd6a56a837853cd4e02ea61463b1c704602c390ae763932359c411926c"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
