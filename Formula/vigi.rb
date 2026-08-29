# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.36"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.36/vigi-darwin-arm64"
      sha256 "c38f68f98073e691df0c68f510ce2bb1c6b9a2e869eff1244a3986d34c59800e"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.36/vigi-darwin-amd64"
      sha256 "84d2effed4e37210068c1aebaf466b31f3ef5bca867c32bab99312b46a4599f1"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.36/vigi-linux-arm64"
      sha256 "7395b91e41cabd2153f6af3b918743e3c8fbcf7f93d7a1506f787f94bfe1d77e"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.36/vigi-linux-amd64"
      sha256 "13777246e20453b75af0b2fa9f05d552290c981ca46f1b26b40ea5b122b2e7e6"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
