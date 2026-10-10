# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v1.0.0/vigi-darwin-arm64"
      sha256 "de1752aeb6e5ecda722b04b97ab233725b361bbab10a221db94da2cd85c569cb"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.0/vigi-darwin-amd64"
      sha256 "83aa2aebdb7f1e222b24baafda127fafa709d9bcf23f9f73243a9437453ab498"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v1.0.0/vigi-linux-arm64"
      sha256 "7b0477ec8d6af8e4e3e0500a0ad1498c761d842fc28215362178ae959a45506c"
    end
    on_intel do
      url "https://vigihq.com/dl/v1.0.0/vigi-linux-amd64"
      sha256 "466817c64782aaa5433fbf63a08ccd80da19924eb0e0fa7db66eccd5e1069190"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  def caveats
    <<~EOS
      Vigilance is installed but not started. To start it, run:
        vigi
    EOS
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
