# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.38"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.38/vigi-darwin-arm64"
      sha256 "ef3b0aa75eab9ef7db9b62529ac4247912a3abde180c64e40188717687ad6f67"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.38/vigi-darwin-amd64"
      sha256 "bbfdf31fa61c9021efe58d7b90741d821db1e6b57f92dddb490e28b23e2395e5"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.38/vigi-linux-arm64"
      sha256 "6e92110914ef1a898e531af1ad50f181384cafe941fafc102ca6f0262fc1a8b9"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.38/vigi-linux-amd64"
      sha256 "2e4508d5d9ef1a00b6de5fb0cae5a413607a9181b7073043e94d8361451de7a5"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
