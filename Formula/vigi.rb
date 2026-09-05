# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.40"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.40/vigi-darwin-arm64"
      sha256 "079ea165cfceb69c5abb50a389a564e3541af6545e7408ea6ba909fc826b6972"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.40/vigi-darwin-amd64"
      sha256 "87305e27a8f8c4fdee1986c6eedbd874a3a286b5a71266f1deabae07a9392092"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.40/vigi-linux-arm64"
      sha256 "b8c07dea6e98027c46eba1b14c2373f35dc86be7f450aa7cc57fdf8b1bda0e84"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.40/vigi-linux-amd64"
      sha256 "2ddb9204994e33daaa8a9f84f4f55ad1ff4d39f9db3614ea4b3543bbcd1e178e"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
